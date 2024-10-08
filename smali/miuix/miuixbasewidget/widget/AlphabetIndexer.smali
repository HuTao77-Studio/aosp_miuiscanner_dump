.class public Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.super Landroid/widget/LinearLayout;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;,
        Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;,
        Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;
    }
.end annotation


# static fields
.field private static final MSG_FADE:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLL:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = "\u2665"

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_NONE:I


# instance fields
.field private final INVALID_INDEX:I

.field private mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

.field private mCancelOverlayTextColorAnim:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndexWidth:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mIndexerTouchHelper:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;

.field private mItemHeight:I

.field private mItemMargin:I

.field private mLastAlphabetIndex:I

.field private mLastSelectedItem:Landroid/widget/TextView;

.field private mListScrollState:I

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayHeight:I

.field private mOverlayHideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mOverlayShowAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mOverlayTextAppearanceRes:I

.field private mOverlayTextColor:I

.field private mOverlayTextPaint:Landroid/text/TextPaint;

.field private mOverlayTextSize:I

.field private mOverlayWidth:I

.field mSectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

.field private mVerticalPosition:I


# direct methods
.method public static synthetic $r8$lambda$2XUVlKUnxfzFv68YS9JniqEqDz8(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->checkItemHeight()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 170
    sget v0, Lmiuix/miuixbasewidget/R$attr;->miuixAppcompatAlphabetIndexerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->INVALID_INDEX:I

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mListScrollState:I

    .line 824
    new-instance p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-direct {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->parseAttrs(Landroid/util/AttributeSet;I)V

    .line 176
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->init()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->checkItemHeight()V

    return-void
.end method

.method static synthetic access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayTranslationX(F)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayTextAlpha(F)V

    return-void
.end method

.method static synthetic access$500(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->hideOverlay()V

    return-void
.end method

.method static synthetic access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Landroid/widget/SectionIndexer;
    .locals 0

    .line 80
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;ILandroid/widget/SectionIndexer;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->scrollToSelection(ILandroid/widget/SectionIndexer;)V

    return-void
.end method

.method private calculateIndex(FI)I
    .locals 2

    .line 595
    invoke-virtual {p0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 597
    :goto_0
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 598
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    :goto_1
    if-lez v0, :cond_3

    .line 605
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return p2
.end method

.method private calculateOverlayPosition(I)I
    .locals 4

    .line 446
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->normalizeIndex(I)I

    move-result p1

    .line 447
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 451
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iget p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getPaddingTop()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v1, v0

    .line 455
    :cond_1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private checkItemHeight()V
    .locals 4

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    .line 237
    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 238
    div-int/lit8 v1, v1, 0x2

    .line 239
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 243
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 244
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-eq v1, v2, :cond_1

    .line 246
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearLastChecked()V
    .locals 3

    const/4 v0, 0x0

    .line 524
    :goto_0
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 525
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v2, v2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructItem()V
    .locals 10

    .line 304
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 305
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 306
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 307
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const-string v2, "mipro-medium"

    const/4 v3, 0x0

    .line 308
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 309
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v4, v4, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 310
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v9, 0x11

    .line 312
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    iget v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 314
    iget-object v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v9, v9, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v9, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v9, v9, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "!"

    .line 316
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v7, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->STARRED_LABEL:Ljava/lang/String;

    :cond_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p0, v8, v1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructOverlay()V
    .locals 5

    .line 367
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mDrawOverlay:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 369
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    .line 370
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayWidth:I

    iget v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    const v4, 0x800005

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 373
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 374
    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexWidth:I

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarinEnd()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 375
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 377
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 379
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextSize:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 380
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 383
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 384
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 386
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    iget v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextAppearanceRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 388
    :cond_0
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextPaint:Landroid/text/TextPaint;

    .line 389
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private drawThumb(Ljava/lang/CharSequence;)V
    .locals 1

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->normalizeIndex(I)I

    move-result p1

    .line 427
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->clearLastChecked()V

    .line 428
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    :cond_0
    return-void
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;F)V
    .locals 2

    .line 780
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 786
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    const-string v0, "!"

    .line 787
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u2665"

    .line 788
    :cond_1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 791
    :cond_2
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getMarginTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 792
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlayTextAlpha(F)V

    .line 793
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextPaint:Landroid/text/TextPaint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 795
    iget p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    .line 796
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 797
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->showOverlay()V

    :cond_3
    return-void
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 4

    .line 433
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 434
    :goto_0
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 435
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method private getListOffset()I
    .locals 1

    .line 507
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    invoke-interface {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getListHeaderCount()I

    move-result v0

    return v0
.end method

.method private getMarginTop()I
    .locals 1

    .line 394
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method private getMarinEnd()I
    .locals 1

    .line 398
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method private getPosition(ILandroid/widget/SectionIndexer;)I
    .locals 6

    .line 639
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    return v0

    :cond_1
    if-gez p1, :cond_2

    return v0

    .line 651
    :cond_2
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 652
    array-length p1, p2

    return p1

    .line 655
    :cond_3
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 656
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 657
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_4
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object p2, p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    add-int v2, v1, p1

    .line 661
    array-length v3, p2

    if-lt v2, v3, :cond_5

    if-lt p1, v1, :cond_7

    :cond_5
    sub-int v3, p1, v1

    .line 665
    array-length v4, p2

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 666
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_6
    if-ltz v3, :cond_8

    .line 668
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 669
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mSectionMap:Ljava/util/HashMap;

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_7
    :goto_2
    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .line 503
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method private hasShown()Z
    .locals 2

    .line 591
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideOverlay()V
    .locals 6

    .line 816
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 817
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v5, v4, v3

    .line 818
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v5, v4, v3

    .line 819
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v3

    .line 820
    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x800005

    .line 207
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mVerticalPosition:I

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setGravity(I)V

    .line 210
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setOrientation(I)V

    .line 212
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->initAnimConfig()V

    .line 213
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructItem()V

    .line 215
    new-instance v1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->post(Ljava/lang/Runnable;)Z

    .line 216
    new-instance v1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;

    invoke-direct {v1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 224
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setClickable(Z)V

    .line 225
    new-instance v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;

    invoke-direct {v0, p0, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexerTouchHelper:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;

    .line 226
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private initAnimConfig()V
    .locals 5

    .line 252
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 253
    new-instance v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;

    invoke-direct {v3, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 274
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 275
    new-instance v2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method private normalizeIndex(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    return p1
.end method

.method private parseAttrs(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 180
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_AlphabetIndexer_Starred_DayNight:I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 185
    new-instance p2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    .line 187
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatDrawOverlay:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mDrawOverlay:Z

    if-eqz p2, :cond_0

    .line 189
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatOverlayTextSize:I

    sget v1, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_overlay_text_size:I

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextSize:I

    .line 191
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatOverlayTextColor:I

    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_overlay_text_color:I

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 191
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextColor:I

    .line 193
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppCompatOverlayTextAppearance:I

    sget v1, Lmiuix/miuixbasewidget/R$style;->Widget_TextAppearance_AlphabetIndexer_Overlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayTextAppearanceRes:I

    .line 195
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatOverlayBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 197
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_item_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    .line 198
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_item_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemMargin:I

    .line 199
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_overlay_width:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayWidth:I

    .line 200
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_overlay_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    .line 201
    sget p2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_min_width:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexWidth:I

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private refreshMask()V
    .locals 4

    .line 459
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    invoke-interface {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    move-result v1

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getListOffset()I

    move-result v2

    sub-int/2addr v1, v2

    .line 470
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 472
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 474
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 475
    :goto_0
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 476
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget-object v3, v3, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v2, :cond_4

    .line 484
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    if-eq v0, v1, :cond_4

    .line 485
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->normalizeIndex(I)I

    move-result v0

    .line 486
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    :cond_4
    return-void
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 680
    iget-object v3, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    if-nez v3, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-interface {v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->stopScroll()V

    .line 684
    iget-object v3, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    invoke-interface {v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getItemCount()I

    move-result v3

    .line 685
    invoke-direct/range {p0 .. p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getListOffset()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    .line 687
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 689
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    .line 690
    array-length v7, v6

    if-lt v2, v7, :cond_1

    add-int/lit8 v9, v7, -0x1

    goto :goto_0

    :cond_1
    move v9, v2

    .line 697
    :goto_0
    invoke-interface {v1, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v7, -0x1

    if-ge v9, v12, :cond_2

    .line 710
    invoke-interface {v1, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    goto :goto_1

    :cond_2
    move v12, v3

    :goto_1
    move v13, v9

    if-ne v12, v10, :cond_6

    move v14, v10

    :cond_3
    if-lez v13, :cond_5

    add-int/lit8 v13, v13, -0x1

    .line 718
    invoke-interface {v1, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-eq v14, v10, :cond_4

    goto :goto_2

    :cond_4
    if-nez v13, :cond_3

    const/4 v13, 0x0

    move v13, v9

    move v10, v14

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    move v13, v9

    :goto_2
    move v10, v14

    :cond_6
    move v14, v13

    :goto_3
    add-int/lit8 v15, v11, 0x1

    :goto_4
    if-ge v15, v7, :cond_7

    .line 740
    invoke-interface {v1, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    if-ne v8, v12, :cond_7

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    int-to-float v1, v13

    int-to-float v7, v7

    div-float/2addr v1, v7

    int-to-float v8, v11

    div-float/2addr v8, v7

    int-to-float v2, v2

    div-float/2addr v2, v7

    if-ne v13, v9, :cond_8

    sub-float v7, v2, v1

    cmpg-float v5, v7, v5

    if-gez v5, :cond_8

    goto :goto_5

    :cond_8
    sub-int/2addr v12, v10

    int-to-float v5, v12

    sub-float/2addr v2, v1

    mul-float v5, v5, v2

    sub-float/2addr v8, v1

    div-float/2addr v5, v8

    .line 753
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v10, v1

    :goto_5
    const/4 v1, 0x1

    sub-int/2addr v3, v1

    if-le v10, v3, :cond_9

    move v10, v3

    .line 758
    :cond_9
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    add-int/2addr v10, v4

    invoke-interface {v1, v10}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->scrollToPosition(I)V

    goto :goto_6

    :cond_a
    mul-int v1, v2, v3

    int-to-float v1, v1

    .line 760
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 761
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    add-int/2addr v1, v4

    invoke-interface {v2, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->scrollToPosition(I)V

    const/4 v14, -0x1

    .line 765
    :goto_6
    invoke-direct {v0, v14, v6}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->updateOverlay(I[Ljava/lang/Object;)V

    return-void
.end method

.method private scrollToSelection(ILandroid/widget/SectionIndexer;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getPosition(ILandroid/widget/SectionIndexer;)I

    move-result p1

    if-gez p1, :cond_0

    .line 626
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->scrollToPosition(I)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0, p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    :goto_0
    return-void
.end method

.method private setChecked(I)V
    .locals 2

    .line 531
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v1, v1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastSelectedItem:Landroid/widget/TextView;

    .line 535
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mTextHighlighter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    iget v0, v0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private showOverlay()V
    .locals 6

    .line 807
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 808
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v5, v4, v3

    .line 809
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v5, v4, v3

    .line 810
    invoke-interface {v0, v2, v4}, Lmiuix/animation/IVisibleStyle;->setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v3

    .line 811
    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method private stop(I)V
    .locals 4

    .line 633
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mHandler:Landroid/os/Handler;

    if-gtz p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    int-to-long v2, p1

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateOverlay(I[Ljava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    .line 770
    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 771
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 772
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 773
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 774
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->calculateOverlayPosition(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->drawThumbInternal(Ljava/lang/CharSequence;F)V

    :cond_0
    return-void
.end method

.method private updateOverlayTextAlpha(F)V
    .locals 3

    .line 803
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateOverlayTranslationX(F)V
    .locals 2

    .line 322
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    .line 324
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    mul-float v0, v0, p1

    .line 327
    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public attach(Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    if-ne v0, p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->detach()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 353
    iput v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mLastAlphabetIndex:I

    .line 354
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    .line 356
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->constructOverlay()V

    .line 358
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 359
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mVerticalPosition:I

    or-int/lit8 v0, v0, 0x30

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 360
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 361
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 362
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detach()V
    .locals 2

    .line 405
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    .line 407
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 408
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    .line 412
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setVisibility(I)V

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    :cond_1
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 846
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexerTouchHelper:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 849
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 1

    .line 494
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$init$0$miuix-miuixbasewidget-widget-AlphabetIndexer()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->checkItemHeight()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 540
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    new-instance p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$$ExternalSyntheticLambda1;-><init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 511
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mListScrollState:I

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 515
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->refreshMask()V

    .line 517
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    move-result p1

    .line 518
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result p1

    .line 519
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p2

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/String;

    .line 520
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->drawThumb(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 546
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mAdapter:Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 547
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    return v1

    .line 551
    :cond_0
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 553
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    return v1

    .line 557
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 560
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mItemHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->normalizeIndex(I)I

    move-result v3

    invoke-direct {p0, v4, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->calculateIndex(FI)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    const/4 v5, 0x5

    if-eq v2, v5, :cond_5

    const/4 v0, 0x6

    if-eq v2, v0, :cond_3

    goto :goto_1

    .line 576
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setPressed(Z)V

    .line 580
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->hasShown()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 581
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop(I)V

    goto :goto_1

    .line 564
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 567
    :cond_6
    invoke-virtual {p0, v4}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setPressed(Z)V

    .line 569
    :cond_7
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->clearLastChecked()V

    .line 570
    invoke-direct {p0, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setChecked(I)V

    .line 571
    invoke-direct {p0, v3, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->scrollToSelection(ILandroid/widget/SectionIndexer;)V

    :cond_8
    :goto_1
    return v4
.end method

.method public setSectionIndexer(Landroid/widget/SectionIndexer;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mIndexer:Landroid/widget/SectionIndexer;

    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x800005

    goto :goto_0

    :cond_0
    const p1, 0x800003

    .line 336
    :goto_0
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mVerticalPosition:I

    return-void
.end method
