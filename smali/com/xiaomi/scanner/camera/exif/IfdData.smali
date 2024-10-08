.class Lcom/xiaomi/scanner/camera/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mOffsetToNextIfd:I

    .line 47
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mIfdId:I

    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method protected checkCollision(S)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 134
    :cond_1
    instance-of v2, p1, Lcom/xiaomi/scanner/camera/exif/IfdData;

    if-eqz v2, :cond_5

    .line 135
    check-cast p1, Lcom/xiaomi/scanner/camera/exif/IfdData;

    .line 136
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getId()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mIfdId:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTagCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTagCount()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 137
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getAllTags()[Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    .line 138
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 139
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-static {v5}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 143
    invoke-virtual {v4, v5}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method protected getAllTags()[Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/xiaomi/scanner/camera/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/camera/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    return-object p1
.end method

.method protected getTagCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mOffsetToNextIfd:I

    return-void
.end method

.method protected setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 2

    .line 86
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setIfd(I)V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    return-object p1
.end method
