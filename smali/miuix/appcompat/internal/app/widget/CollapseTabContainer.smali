.class public Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "CollapseTabContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;->setContentHeight(I)V

    return-void
.end method


# virtual methods
.method public getTabBarLayoutRes()I
    .locals 1

    .line 23
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar:I

    return v0
.end method

.method public getTabTextStyle()I
    .locals 1

    const v0, 0x10102f5

    return v0
.end method

.method public getTabViewLayoutRes()I
    .locals 1

    .line 28
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab:I

    return v0
.end method

.method public getTabViewMarginHorizontal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    .line 46
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const/16 p1, 0x8

    if-eqz p3, :cond_2

    .line 51
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz p4, :cond_3

    .line 54
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object p2
.end method
