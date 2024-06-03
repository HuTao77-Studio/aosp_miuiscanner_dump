.class public Lmiuix/core/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;,
        Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiuix/core/util/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

.field private mFileDataVersion:I

.field private mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

.field private mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 1190
    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    return-void
.end method

.method synthetic constructor <init>(ILmiuix/core/util/DirectIndexedFile$1;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private build()V
    .locals 14

    .line 1403
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1404
    new-instance v1, Lmiuix/core/util/DirectIndexedFile$FileHeader;

    iget v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(IILmiuix/core/util/DirectIndexedFile$1;)V

    iput-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1407
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1408
    iget-object v5, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v5}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    new-instance v12, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v12, v5, v2

    const/4 v5, 0x0

    .line 1411
    :goto_1
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1412
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1417
    :cond_1
    :goto_2
    new-array v5, v5, [Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v4, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3402(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    const/4 v5, 0x0

    .line 1418
    :goto_3
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 1419
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1420
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1422
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    move-result v9

    .line 1423
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    .line 1424
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    new-instance v7, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1429
    :cond_3
    :try_start_0
    invoke-direct {p0, v3}, Lmiuix/core/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .locals 2

    .line 1390
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    if-eqz v0, :cond_0

    return-void

    .line 1391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCurrentIndexingGroup()V
    .locals 2

    .line 1396
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 1397
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1398
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1437
    :goto_0
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 1438
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v3, p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$3700(Lmiuix/core/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1439
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    aget-object v3, v3, v1

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$502(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J

    .line 1441
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    if-eqz p1, :cond_0

    .line 1443
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    .line 1446
    :goto_1
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 1447
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5, p1}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->access$3800(Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1450
    :cond_1
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aget-object v4, v4, v1

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$802(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J

    if-eqz p1, :cond_2

    .line 1452
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    .line 1455
    :goto_2
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1456
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1459
    :goto_3
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 1460
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    int-to-long v6, v2

    invoke-static {v5, v6, v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1402(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;J)J

    .line 1461
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$4000(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$4100(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 1464
    :goto_4
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_e

    .line 1465
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    int-to-long v6, v2

    iput-wide v6, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    if-nez p1, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1468
    :goto_5
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_5

    .line 1469
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1471
    :cond_5
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    iget v5, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v7

    aget-object v7, v7, v4

    iget v7, v7, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr v5, v7

    mul-int v5, v5, v6

    add-int/2addr v2, v5

    goto/16 :goto_9

    .line 1474
    :cond_6
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    iget v5, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    :goto_6
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v4

    iget v6, v6, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-ge v5, v6, :cond_d

    .line 1475
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    if-nez v6, :cond_7

    .line 1477
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2600(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    move-result-object v6

    :cond_7
    const/4 v7, 0x0

    .line 1479
    :goto_7
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_c

    .line 1480
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 1481
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_8

    .line 1482
    :cond_8
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 1483
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_8

    .line 1484
    :cond_9
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    .line 1485
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_8

    .line 1486
    :cond_a
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_b

    .line 1487
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1489
    :cond_b
    :goto_8
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return v2
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 3

    .line 1282
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    .line 1284
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    .line 1289
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_9

    .line 1290
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Object["

    packed-switch v1, :pswitch_data_0

    .line 1352
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type of objects "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1353
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expected"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1307
    :pswitch_0
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1308
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1302
    :pswitch_1
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 1303
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be int"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1297
    :pswitch_2
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 1298
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be short"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1292
    :pswitch_3
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 1293
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be byte"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1344
    :pswitch_4
    aget-object v1, p2, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 1347
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1348
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1349
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    .line 1348
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1

    .line 1345
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be long[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1336
    :pswitch_5
    aget-object v1, p2, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    .line 1339
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1340
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1341
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    .line 1340
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1

    .line 1337
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be int[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1328
    :pswitch_6
    aget-object v1, p2, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_6

    .line 1331
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1332
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1333
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    .line 1332
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1

    .line 1329
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be short[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1320
    :pswitch_7
    aget-object v1, p2, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_7

    .line 1323
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1324
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1325
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    .line 1324
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto :goto_1

    .line 1321
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be byte[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1312
    :pswitch_8
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1315
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1316
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1317
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    .line 1316
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1313
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be String"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1357
    :cond_9
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V

    .line 1358
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1285
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Different number of objects inputted, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1286
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " data expected"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .locals 3

    .line 1264
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 1266
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 1267
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->newGroup()V

    const/4 v0, 0x0

    .line 1268
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1269
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1272
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Different number between indexes and objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .locals 13

    .line 1198
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiuix/core/util/DirectIndexedFile$1;)V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1199
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1201
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 1202
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v3, p0, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;Lmiuix/core/util/DirectIndexedFile$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    aget-object v1, p1, v0

    instance-of v3, v1, Ljava/lang/Byte;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1207
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1209
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    :goto_1
    move-object v6, v1

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1210
    :cond_0
    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_1

    .line 1211
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v4, 0x2

    .line 1213
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-object v6, v1

    const/4 v7, 0x2

    goto/16 :goto_2

    .line 1214
    :cond_1
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 1215
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v4, 0x4

    .line 1217
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-object v6, v1

    const/4 v7, 0x4

    goto/16 :goto_2

    .line 1218
    :cond_2
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 1219
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/16 v4, 0x8

    .line 1221
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-object v6, v1

    const/16 v7, 0x8

    goto/16 :goto_2

    .line 1222
    :cond_3
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1223
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1224
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto :goto_1

    .line 1225
    :cond_4
    instance-of v3, v1, [B

    if-eqz v3, :cond_5

    .line 1226
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1227
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_1

    .line 1228
    :cond_5
    instance-of v3, v1, [S

    if-eqz v3, :cond_6

    .line 1229
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1230
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_1

    .line 1231
    :cond_6
    instance-of v3, v1, [I

    if-eqz v3, :cond_7

    .line 1232
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1233
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_1

    .line 1234
    :cond_7
    instance-of v1, v1, [J

    if-eqz v1, :cond_8

    .line 1235
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1236
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_1

    .line 1241
    :goto_2
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    new-instance v3, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1238
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type of the ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] argument"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1245
    :cond_9
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    new-instance v1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V

    invoke-static {v0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2602(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;Lmiuix/core/util/DirectIndexedFile$Builder$Item;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    return-void
.end method

.method public newGroup()V
    .locals 2

    .line 1252
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 1253
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    :cond_0
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->build()V

    const/4 v0, 0x0

    .line 1373
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1374
    :try_start_1
    invoke-direct {p0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1382
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method
