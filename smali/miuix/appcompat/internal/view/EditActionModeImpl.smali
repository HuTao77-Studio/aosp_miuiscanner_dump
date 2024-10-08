.class public Lmiuix/appcompat/internal/view/EditActionModeImpl;
.super Lmiuix/appcompat/internal/view/ActionModeImpl;
.source "EditActionModeImpl.java"

# interfaces
.implements Lmiuix/view/EditActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/ActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    return-void
.end method

.method public setButton(II)V
    .locals 1

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setButton(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButton(III)V
    .locals 1

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSubtitle(I)V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
