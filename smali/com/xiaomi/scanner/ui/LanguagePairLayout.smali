.class public Lcom/xiaomi/scanner/ui/LanguagePairLayout;
.super Landroid/widget/LinearLayout;
.source "LanguagePairLayout.java"


# instance fields
.field private mItemDest:Landroid/widget/TextView;

.field private mItemSource:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initAsItem()V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 21
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a011d

    .line 22
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->mItemSource:Landroid/widget/TextView;

    const v0, 0x7f0a011b

    .line 23
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->mItemDest:Landroid/widget/TextView;

    return-void
.end method

.method public setLanguageEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->mItemSource:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->mItemDest:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
