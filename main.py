import qrcode

# URL for your GitHub homepage (update if needed)
url = "https://github.com/TanushriVijay12/is601HW7-Tanu"

# Generate QR code
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(url)
qr.make(fit=True)

# Create an image from the QR Code instance
img = qr.make_image(fill_color="black", back_color="white")

# Save the image to a file
img.save("github_qr.png")

print("QR code generated and saved as github_qr.png")
