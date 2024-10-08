.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field private mIsCheckable:Z

.field private mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 1

    .line 75
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setSelected(Z)V

    .line 59
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setCheckable(Z)V

    .line 62
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setChecked(Z)V

    .line 63
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_bg_top_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_bg_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public performClick()Z
    .locals 4

    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->playSoundEffect(I)V

    return v1

    :cond_1
    return v2
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mIsCheckable:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
