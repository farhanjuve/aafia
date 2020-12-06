<!DOCTYPE html>

  <!-- Main Sidebar Container -->
  @include('layouts.main2')

    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ count($today) }}</h3>

                <p>Transaksi Harian</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>{{ $total }}</h3>

                <p>Total Transaksi</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a  class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>{{ $jml_pasien }}</h3>

                <p>Total Pasien Terdaftar</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a  class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>{{ $running }}</h3>

                <p>Transaksi Berjalan</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
			  <a  class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
			<div class="col-12">            
				<div class="card">
				  <div class="card-header">
					<h3 class="card-title">Transaksi Berjalan Hari Ini</h3>
				  </div>
				  <!-- /.card-header -->
				  <div class="card-body p-0">
					<table class="table table-striped">
					  <thead>
						<tr>
						  <th style="width: 10px">#</th>
						  <th>Nomor Transaksi</th>
						  <th>Nama Pasien</th>
						  <th>Status</th>
						</tr>
					  </thead>
					  <tbody>
						@foreach($today as $key => $data)
						<tr>
							<td>{{ $key+1 }}</td>
							<td>{{$data->nomor_transaksi}}</td>
							<td>{{$data->nama_pasien}}</td>
							<td>{{$data->status}}</td>
						</tr>
						@endforeach
					  </tbody>
					</table>
				  </div>
				  <!-- /.card-body -->
				</div>
			</div>

            <!-- /.card -->


          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">

			<!-- Calendar -->
			<div class="card bg-gradient-success">
              <div class="card-header border-0 ui-sortable-handle" style="cursor: move;">

                <h3 class="card-title">
                  <i class="far fa-calendar-alt"></i>
                  Calendar
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body pt-0">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"><div class="bootstrap-datetimepicker-widget usetwentyfour"><ul class="list-unstyled"><li class="show"><div class="datepicker"><div class="datepicker-days" style=""><table class="table table-sm"><thead><tr><th class="prev" data-action="previous"></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Month">December 2020</th></th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td data-action="selectDay" data-day="11/29/2020" class="day old weekend">29</td><td data-action="selectDay" data-day="11/30/2020" class="day old">30</td><td data-action="selectDay" data-day="12/01/2020" class="day active today">1</td><td data-action="selectDay" data-day="12/02/2020" class="day">2</td><td data-action="selectDay" data-day="12/03/2020" class="day">3</td><td data-action="selectDay" data-day="12/04/2020" class="day">4</td><td data-action="selectDay" data-day="12/05/2020" class="day weekend">5</td></tr><tr><td data-action="selectDay" data-day="12/06/2020" class="day weekend">6</td><td data-action="selectDay" data-day="12/07/2020" class="day">7</td><td data-action="selectDay" data-day="12/08/2020" class="day">8</td><td data-action="selectDay" data-day="12/09/2020" class="day">9</td><td data-action="selectDay" data-day="12/10/2020" class="day">10</td><td data-action="selectDay" data-day="12/11/2020" class="day">11</td><td data-action="selectDay" data-day="12/12/2020" class="day weekend">12</td></tr><tr><td data-action="selectDay" data-day="12/13/2020" class="day weekend">13</td><td data-action="selectDay" data-day="12/14/2020" class="day">14</td><td data-action="selectDay" data-day="12/15/2020" class="day">15</td><td data-action="selectDay" data-day="12/16/2020" class="day">16</td><td data-action="selectDay" data-day="12/17/2020" class="day">17</td><td data-action="selectDay" data-day="12/18/2020" class="day">18</td><td data-action="selectDay" data-day="12/19/2020" class="day weekend">19</td></tr><tr><td data-action="selectDay" data-day="12/20/2020" class="day weekend">20</td><td data-action="selectDay" data-day="12/21/2020" class="day">21</td><td data-action="selectDay" data-day="12/22/2020" class="day">22</td><td data-action="selectDay" data-day="12/23/2020" class="day">23</td><td data-action="selectDay" data-day="12/24/2020" class="day">24</td><td data-action="selectDay" data-day="12/25/2020" class="day">25</td><td data-action="selectDay" data-day="12/26/2020" class="day weekend">26</td></tr><tr><td data-action="selectDay" data-day="12/27/2020" class="day weekend">27</td><td data-action="selectDay" data-day="12/28/2020" class="day">28</td><td data-action="selectDay" data-day="12/29/2020" class="day">29</td><td data-action="selectDay" data-day="12/30/2020" class="day">30</td><td data-action="selectDay" data-day="12/31/2020" class="day">31</td><td data-action="selectDay" data-day="01/01/2021" class="day new">1</td><td data-action="selectDay" data-day="01/02/2021" class="day new weekend">2</td></tr><tr><td data-action="selectDay" data-day="01/03/2021" class="day new weekend">3</td><td data-action="selectDay" data-day="01/04/2021" class="day new">4</td><td data-action="selectDay" data-day="01/05/2021" class="day new">5</td><td data-action="selectDay" data-day="01/06/2021" class="day new">6</td><td data-action="selectDay" data-day="01/07/2021" class="day new">7</td><td data-action="selectDay" data-day="01/08/2021" class="day new">8</td><td data-action="selectDay" data-day="01/09/2021" class="day new weekend">9</td></tr></tbody></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Year"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Year">2020</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Year"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectMonth" class="month">Jan</span><span data-action="selectMonth" class="month">Feb</span><span data-action="selectMonth" class="month">Mar</span><span data-action="selectMonth" class="month">Apr</span><span data-action="selectMonth" class="month">May</span><span data-action="selectMonth" class="month">Jun</span><span data-action="selectMonth" class="month">Jul</span><span data-action="selectMonth" class="month">Aug</span><span data-action="selectMonth" class="month">Sep</span><span data-action="selectMonth" class="month">Oct</span><span data-action="selectMonth" class="month">Nov</span><span data-action="selectMonth" class="month active">Dec</span></td></tr></tbody></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Decade"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Decade">2020-2029</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Decade"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectYear" class="year old">2019</span><span data-action="selectYear" class="year active">2020</span><span data-action="selectYear" class="year">2021</span><span data-action="selectYear" class="year">2022</span><span data-action="selectYear" class="year">2023</span><span data-action="selectYear" class="year">2024</span><span data-action="selectYear" class="year">2025</span><span data-action="selectYear" class="year">2026</span><span data-action="selectYear" class="year">2027</span><span data-action="selectYear" class="year">2028</span><span data-action="selectYear" class="year">2029</span><span data-action="selectYear" class="year old">2030</span></td></tr></tbody></table></div><div class="datepicker-decades" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Century"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5">2000-2090</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Century"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectDecade" class="decade old" data-selection="2006">1990</span><span data-action="selectDecade" class="decade" data-selection="2006">2000</span><span data-action="selectDecade" class="decade active" data-selection="2016">2010</span><span data-action="selectDecade" class="decade" data-selection="2026">2020</span><span data-action="selectDecade" class="decade" data-selection="2036">2030</span><span data-action="selectDecade" class="decade" data-selection="2046">2040</span><span data-action="selectDecade" class="decade" data-selection="2056">2050</span><span data-action="selectDecade" class="decade" data-selection="2066">2060</span><span data-action="selectDecade" class="decade" data-selection="2076">2070</span><span data-action="selectDecade" class="decade" data-selection="2086">2080</span><span data-action="selectDecade" class="decade" data-selection="2096">2090</span><span data-action="selectDecade" class="decade old" data-selection="2106">2100</span></td></tr></tbody></table></div></div></li><li class="picker-switch accordion-toggle"></li></ul></div></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->