<div class="dashboard-stat2 bordered">
    <div class="display">
        <div class="number">
            <h3 class="font-green-sharp">
                <span data-counter="counterup" data-value="{{ number_format(round($count['revenue'])) . ' VNĐ'}}">0</span>
            </h3>
            <small>{{ trans('plugins/ecommerce::reports.count.revenue') }}</small>
        </div>
        <div class="icon">
            <i class="far fa-money-bill-alt"></i>
        </div>
    </div>
</div>
