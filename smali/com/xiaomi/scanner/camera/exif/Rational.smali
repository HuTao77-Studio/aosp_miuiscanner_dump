.class public Lcom/xiaomi/scanner/camera/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    .line 37
    iput-wide p3, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/camera/exif/Rational;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-wide v0, p1, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    .line 45
    iget-wide v0, p1, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v2, :cond_2

    .line 79
    check-cast p1, Lcom/xiaomi/scanner/camera/exif/Rational;

    .line 80
    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    iget-wide v4, p1, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    iget-wide v4, p1, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getDenominator()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    return-wide v0
.end method

.method public toDouble()D
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    long-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
