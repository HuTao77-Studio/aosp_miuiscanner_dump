.class public Lmiuix/view/animation/ElasticEaseOutInterpolator;
.super Ljava/lang/Object;
.source "ElasticEaseOutInterpolator.java"

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
    invoke-direct {p0, v0, v0}, Lmiuix/view/animation/ElasticEaseOutInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mAmplitude:F

    .line 30
    iput p2, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    .line 35
    iget v0, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mPeriod:F

    .line 36
    iget v1, p0, Lmiuix/view/animation/ElasticEaseOutInterpolator;->mAmplitude:F

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v3

    if-nez v4, :cond_1

    return v3

    :cond_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_2

    const v0, 0x3e99999a    # 0.3f

    :cond_2
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v6, v0

    .line 52
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    div-float/2addr v3, v1

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    double-to-float v2, v6

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 v1, 0x40800000    # 4.0f

    div-float v2, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float v1, v1, p1

    float-to-double v10, v1

    .line 54
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    sub-float/2addr p1, v2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v0

    double-to-float p1, v6

    return p1
.end method
