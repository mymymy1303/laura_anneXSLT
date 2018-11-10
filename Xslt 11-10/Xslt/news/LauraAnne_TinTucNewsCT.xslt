<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-new-detail-1">
			<article class="new-lists">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="news-read">
								<h1>
										<xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h1>
								<time> <i class="far fa-calendar-alt"></i>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>

								<p class="italic">
									<xsl:value-of select="/NewsDetail/BriefContent"></xsl:value-of>
								</p>

								<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								<!-- <p>Nếu như son môi tạo điểm nhấn thu hút ngay từ giây phút đầu tiên thì nước hoa lại ghi dấu ấn khó phai làm
									người ta cứ lưu luyến mãi về sau. Nhắc đến nước hoa, mọi người thường nghĩ đến một điều gì đó vô hình và khác
									biệt. Những bí mật về nước hoa mà ELLE chia sẻ sau đây chắc hẳn sẽ làm bạn cảm thấy thích thú.</p><img src="./img/new_detail/new_detail_1.png"
								 alt="">
								<h2>MỘT SỐ LOẠI NƯỚC HOA LÀM TỪ HOA THẬT</h2><img src="./img/new_detail/new_detail_2.png" alt="">
								<p>Được thành lập vào năm 1981 bởi cựu nghệ sĩ piano và một người mẫu, Annick Goutal nằm trong danh sách những
									nhãn hiệu nước hoa cao cấp nhất hiện nay. Tiếp nối thương hiệu của gia đình, con gái của Annick Goutal –
									Camille Goutal tiết lộ rằng hoa là một trong những thành phần quan trọng nhất mà công ty sử dụng để làm nước
									hoa.</p>
								<p>Ẩn chứa bên trong những cánh hoa là hương thơm mang đầy nét quyến rũ và nữ tính. Do vậy, khi chuyển thành
									mùi hương, nước hoa sẽ mang sự khiêu gợi khó tả mê hoặc cả đàn ông và phụ nữ. Có một số phụ nữ khi sử dụng
									nước hoa, họ cảm thấy dường như mình đang hòa quyện vào thế giới thiên nhiên huyền bí.</p>
								<p>Có hai loại xu hướng trong thị trường nước hoa. Một là theo mùa. Hai là phụ thuộc vào thời tiết. Theo khảo
									sát về thói quen mua sắm của những tín đồ mùi hương, họ sẽ thích sử dụng nước hoa có hương thơm nhẹ nhàng vào
									mùa hè và ngược lại sẽ chuộng những nốt hương nồng nàn vào mùa lạnh. Nhưng điều này không phải lúc nào cũng
									đúng. Một số mùi được ưa chuộng trong tận ba năm hoặc cả một thập kỉ. Điển hình là mùi cam quýt và vani dường
									như có một sức hút không hề nhỏ nên chiếm được rất nhiều cảm tình từ phái đẹp.</p> -->
								<div class="social-networks nav">
									<div class="nav-item">
										<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
											 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
									</div>
									<div class="nav-item"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
										 data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a></div>
									<div class="nav-item">
										<div class="g-plusone" data-size="tall"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="othernews" data-fix="50" data-fix-type="initial" data-fix-change="sticky">
								<div class="list-latest lists">
									<h2>Bài viết liên quan</h2>
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
									<!-- <a class="item" href="#">
										<figure><img src="./img/new_detail/new_detail_2.png" alt="alt">
											<figcaption>
												<p>LKhám phá thế giới nước hoa từ những mùi cơ bản nhất</p>
											</figcaption>
										</figure>
									</a>
									<a class="item" href="#">
										<figure><img src="./img/new_detail/new_detail_2.png" alt="alt">
											<figcaption>
												<p>LKhám phá thế giới nước hoa từ những mùi cơ bản nhất</p>
											</figcaption>
										</figure>
									</a> -->
								</div>
								<!-- <div class="list-relate lists">
									<h2>Bài viết mới nhất</h2><a class="item" href="#">
										<figure><img src="./img/new_detail/new_detail_2.png" alt="alt">
											<figcaption>
												<p>Khám phá thế giới nước hoa từ những mùi cơ bản nhất</p>
											</figcaption>
										</figure>
									</a><a class="item" href="#">
										<figure><img src="./img/new_detail/new_detail_2.png" alt="alt">
											<figcaption>
												<p>Khám phá thế giới nước hoa từ những mùi cơ bản nhất</p>
											</figcaption>
										</figure>
									</a><a class="item" href="#">
										<figure><img src="./img/new_detail/new_detail_2.png" alt="alt">
											<figcaption>
												<p>Khám phá thế giới nước hoa từ những mùi cơ bản nhất</p>
											</figcaption>
										</figure>
									</a>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">

		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<p>
						<xsl:value-of select="Title"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>