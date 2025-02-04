import numpy as np
import pandas as pd

# Tổng tiền điện 1 năm
total_electricity_cost = 1000000  # Ví dụ: 1 triệu VNĐ

# Tỷ lệ phân phối tiền điện theo mùa
season_ratios = {
    "winter": 0.2,  # Mùa đông (ít điện nhất)
    "spring": 0.3,  # Mùa xuân
    "summer": 0.4,  # Mùa hè (nhiều điện nhất)
    "autumn": 0.1,  # Mùa thu (thêm vào để tránh lỗi)
}

# Ngày trong từng mùa (chắc chắn tổng là 366 ngày cho năm nhuận)
days_in_season = {
    "winter": 31 + 29 + 31,  # Tháng 12, 1, 2 (tháng 2 có 29 ngày trong năm nhuận)
    "spring": 31 + 30 + 31,  # Tháng 3, 4, 5
    "summer": 30 + 31 + 31,  # Tháng 6, 7, 8
    "autumn": 30 + 31 + 30,  # Tháng 9, 10, 11
}

# Kiểm tra tổng số ngày
total_days = sum(days_in_season.values())
assert total_days == 366, f"Số ngày trong các mùa không khớp: {total_days}"

# Phân phối tiền điện theo từng mùa
season_costs = {season: total_electricity_cost * ratio for season, ratio in season_ratios.items()}

# Tính tiền điện từng ngày
daily_costs = []
for season, days in days_in_season.items():
    daily_rate = season_costs[season] / days
    daily_costs.extend([daily_rate] * days)

# Kiểm tra số phần tử trong daily_costs
assert len(daily_costs) == 366, f"Số phần tử trong daily_costs không khớp: {len(daily_costs)}"

# Kiểm tra tổng tiền điện không đổi
assert np.isclose(sum(daily_costs), total_electricity_cost), "Tổng tiền điện không khớp"

# Tạo DataFrame chứa kết quả
dates = pd.date_range(start="2024-01-01", end="2024-12-31")
electricity_data = pd.DataFrame({"Date": dates, "Daily_Cost": daily_costs})

# In kết quả
print(electricity_data)
