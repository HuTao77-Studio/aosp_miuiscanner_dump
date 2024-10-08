.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ListPopup$ContentSize;
    }
.end annotation


# static fields
.field private static final DIM:F = 0.3f

.field private static final OFFSET_FROM_STATUS_BAR:I = 0x16

.field private static final OFFSET_X:F = 8.0f

.field private static final OFFSET_Y:F = 8.0f

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field protected final mBackgroundPadding:Landroid/graphics/Rect;

.field private mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field protected mElevation:I

.field private mHasShadow:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinMarginScreen:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetXSet:Z

.field private mOffsetY:I

.field private mOffsetYSet:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v0, 0x800035

    .line 61
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 78
    new-instance v1, Lmiuix/internal/widget/ListPopup$1;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 90
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    .line 91
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->setHeight(I)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 95
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_minimum_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 97
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 98
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 99
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Lmiuix/internal/widget/ListPopup$ContentSize;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup;Lmiuix/internal/widget/ListPopup$1;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 103
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setFocusable(Z)V

    .line 105
    new-instance v0, Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 106
    new-instance v1, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    .line 108
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setAnimationStyle(I)V

    .line 110
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 111
    new-instance v0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private calculateXoffset(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 294
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    aget v1, v0, v3

    .line 295
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr v1, v4

    .line 296
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    aget v0, v0, v3

    goto :goto_0

    :cond_0
    aget v1, v0, v3

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    add-int/2addr v1, v4

    .line 303
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    if-gez v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getWidth()I

    move-result v1

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 310
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    :cond_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 312
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 313
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, v0

    sub-int v1, v3, p1

    goto :goto_2

    .line 315
    :cond_3
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, v0

    add-int v1, v3, p1

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    return v1
.end method

.method private calculateYoffset(Landroid/view/View;)I
    .locals 5

    .line 273
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 275
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    .line 277
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 278
    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v3, v3, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v3, v2, :cond_2

    int-to-float v4, v0

    add-float/2addr v1, v4

    int-to-float v4, v3

    add-float/2addr v1, v4

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 282
    iget-boolean v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/2addr p1, v3

    sub-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 405
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3e99999a    # 0.3f

    .line 406
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 409
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 10

    const/4 v0, 0x0

    .line 347
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 349
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 350
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v8, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v0, v3, :cond_5

    .line 352
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v5, :cond_0

    move-object v8, v4

    move v5, v9

    :cond_0
    if-nez p2, :cond_1

    .line 358
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 360
    :cond_1
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 361
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 362
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 363
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-eqz v9, :cond_2

    goto :goto_1

    .line 366
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p4, :cond_3

    .line 368
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v9, p4}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    goto :goto_1

    :cond_3
    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean p1, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez p1, :cond_6

    .line 375
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {p1, v6}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 377
    :cond_6
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iput v7, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    return-void
.end method

.method protected static setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    .line 382
    new-instance v0, Lmiuix/internal/widget/ListPopup$3;

    invoke-direct {v0}, Lmiuix/internal/widget/ListPopup$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 3

    .line 265
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    move-result v0

    .line 266
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    move-result v1

    .line 267
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/internal/widget/ListPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 268
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 269
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected computePopupContentWidth()I
    .locals 4

    .line 258
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/internal/widget/ListPopup;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 330
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setWidth(I)V

    .line 331
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    return-void
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 254
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 224
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMinMarginScreen()I
    .locals 1

    .line 242
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    return v0
.end method

.method public getOffsetFromStatusBar()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 250
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    return v0
.end method

.method synthetic lambda$new$0$miuix-internal-widget-ListPopup(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$1$miuix-internal-widget-ListPopup()V
    .locals 1

    .line 112
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$prepareShow$2$miuix-internal-widget-ListPopup(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 198
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 199
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 200
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method protected prepareContentView(Landroid/content/Context;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 124
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method protected prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 4

    const-string p2, "ListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "show: anchor is null"

    .line 161
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 165
    :cond_0
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_popup_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 167
    new-instance v2, Lmiuix/internal/widget/ListPopup$2;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ListPopup$2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-eq v1, v3, :cond_3

    .line 178
    :cond_2
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 179
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 181
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 182
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x10

    .line 183
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    :cond_3
    iget-boolean v1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    .line 187
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 188
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->setElevation(F)V

    .line 189
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 192
    :cond_4
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_5

    const-string p1, "list not found"

    .line 194
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 197
    :cond_5
    new-instance p2, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setWidth(I)V

    .line 205
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    if-lez p2, :cond_6

    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget p2, p2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    if-le p2, v1, :cond_6

    .line 206
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->setHeight(I)V

    .line 209
    :cond_6
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v2
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 143
    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 145
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 220
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHasShadow(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 233
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .locals 0

    .line 413
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 228
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
