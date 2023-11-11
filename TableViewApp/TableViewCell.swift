import UIKit

final class TableViewCell: UITableViewCell {
	let label = UILabel()
    private let toggle = UISwitch()
		
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setup()
		layout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setup() {
		label.numberOfLines = 0
	}
	
	private func layout() {
		contentView.addSubview(label)
		contentView.addSubview(toggle)
		label.translatesAutoresizingMaskIntoConstraints = false
		toggle.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
			toggle.centerYAnchor.constraint(equalTo: label.centerYAnchor),
			toggle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			label.trailingAnchor.constraint(equalTo: toggle.leadingAnchor, constant: -16)
		])
		toggle.setContentCompressionResistancePriority(.required, for: .horizontal)
		toggle.setContentHuggingPriority(.required, for: .horizontal)
	}
}
