.class public Lmiuix/view/animation/ElasticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "ElasticEaseInOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mAmplitude:F

.field private final mPeriod:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0}, Lmiuix/view/animation/ElasticEaseInOutInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mAmplitude:F

    .line 30
    iput p2, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13

    .line 35
    iget v0, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mPeriod:F

    .line 36
    iget v1, p0, Lmiuix/view/animation/ElasticEaseInOutInterpolator;->mAmplitude:F

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    const v0, 0x3ee66667    # 0.45000002f

    :cond_2
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v2, v0

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    div-float v7, v4, v1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double v2, v2, v7

    double-to-float v2, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 v1, 0x40800000    # 4.0f

    div-float v2, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpg-float v3, p1, v4

    if-gez v3, :cond_5

    sub-float/2addr p1, v4

    const/high16 v3, -0x41000000    # -0.5f

    float-to-double v9, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    float-to-double v11, v1

    .line 58
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    sub-float/2addr p1, v2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v9, v9, v0

    double-to-float p1, v9

    mul-float p1, p1, v3

    return p1

    :cond_5
    sub-float/2addr p1, v4

    float-to-double v3, v1

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float v1, v1, p1

    float-to-double v9, v1

    .line 63
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    sub-float/2addr p1, v2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v3, v3, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v0

    double-to-float p1, v3

    return p1
.end method
