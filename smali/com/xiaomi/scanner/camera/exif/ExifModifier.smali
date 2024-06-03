.class Lcom/xiaomi/scanner/camera/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ExifModifier"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mOffsetBase:I

    .line 51
    iput-object p2, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v1, Lcom/xiaomi/scanner/camera/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/xiaomi/scanner/camera/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    invoke-static {v1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;

    move-result-object p2

    .line 57
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    .line 58
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {p2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getTiffStartPosition()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mOffsetBase:I

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 62
    throw p1
.end method

.method private modify()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;

    .line 143
    iget-object v2, v1, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    iget v1, v1, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v1}, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->writeTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 172
    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_1

    .line 173
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getRational(I)Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/Rational;->getNumerator()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 175
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/Rational;->getDenominator()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_1

    .line 167
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :pswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result p2

    :goto_2
    if-ge v0, p2, :cond_1

    .line 186
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-short v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 155
    :pswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getStringByte()[B

    move-result-object p2

    .line 156
    array-length v1, p2

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 157
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aput-byte v0, p2, p1

    .line 158
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 180
    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result p2

    new-array p2, p2, [B

    .line 181
    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getBytes([B)V

    .line 182
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected commit()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Lcom/xiaomi/scanner/camera/exif/ByteBufferInputStream;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/camera/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x5

    :try_start_1
    new-array v3, v2, [Lcom/xiaomi/scanner/camera/exif/IfdData;

    .line 74
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v5, 0x0

    .line 75
    invoke-virtual {v4, v5}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v6, 0x1

    .line 76
    invoke-virtual {v4, v6}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v7, 0x2

    .line 77
    invoke-virtual {v4, v7}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v8, 0x3

    .line 78
    invoke-virtual {v4, v8}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v9, 0x4

    .line 79
    invoke-virtual {v4, v9}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v3, v9

    aget-object v9, v3, v5

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    aget-object v10, v3, v6

    if-eqz v10, :cond_1

    or-int/lit8 v9, v9, 0x2

    :cond_1
    aget-object v7, v3, v7

    if-eqz v7, :cond_2

    or-int/lit8 v9, v9, 0x4

    :cond_2
    if-eqz v4, :cond_3

    or-int/lit8 v9, v9, 0x8

    :cond_3
    aget-object v4, v3, v8

    if-eqz v4, :cond_4

    or-int/lit8 v9, v9, 0x10

    .line 98
    :cond_4
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-static {v1, v9, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v7

    :goto_1
    if-eq v7, v2, :cond_a

    if-eqz v7, :cond_8

    if-eq v7, v6, :cond_5

    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result v8

    invoke-virtual {v0, v8}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 113
    invoke-virtual {v8}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v9

    invoke-virtual {v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 114
    invoke-virtual {v8}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v9

    invoke-virtual {v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v10

    if-eq v9, v10, :cond_6

    goto :goto_2

    .line 117
    :cond_6
    iget-object v9, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v10, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;

    invoke-virtual {v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getOffset()I

    move-result v11

    invoke-direct {v10, v8, v11}, Lcom/xiaomi/scanner/camera/exif/ExifModifier$TagOffset;-><init>(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-virtual {v0, v7}, Lcom/xiaomi/scanner/camera/exif/IfdData;->removeTag(S)V

    .line 119
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTagCount()I

    move-result v7

    if-nez v7, :cond_9

    .line 120
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 135
    :cond_7
    :goto_2
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return v5

    .line 104
    :cond_8
    :try_start_2
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v0

    aget-object v0, v3, v0

    if-nez v0, :cond_9

    .line 106
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    .line 126
    :cond_9
    :goto_3
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v7

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_c

    .line 128
    aget-object v4, v3, v0

    if-eqz v4, :cond_b

    .line 129
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTagCount()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v4, :cond_b

    .line 135
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 133
    :cond_c
    :try_start_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->modify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return v6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_5
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 136
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->mTagToModified:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    return-void
.end method
