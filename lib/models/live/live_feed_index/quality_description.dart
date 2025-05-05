class QualityDescription {
	int? qn;
	String? desc;

	QualityDescription({this.qn, this.desc});

	factory QualityDescription.fromJson(Map<String, dynamic> json) {
		return QualityDescription(
			qn: json['qn'] as int?,
			desc: json['desc'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'qn': qn,
				'desc': desc,
			};
}
