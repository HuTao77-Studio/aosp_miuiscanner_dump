.class public Lmiuix/view/animation/CirclularEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "CirclularEaseInOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    mul-float p1, p1, p1

    sub-float/2addr v3, p1

    float-to-double v3, v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    :goto_0
    double-to-float p1, v3

    mul-float p1, p1, v0

    return p1

    :cond_0
    sub-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, p1

    sub-float/2addr v3, p1

    float-to-double v3, v3

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v3, v1

    goto :goto_0
.end method
