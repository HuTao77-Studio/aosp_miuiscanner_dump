.class public Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DOnAnimationEndListener"
.end annotation


# instance fields
.field mFinalVisibility:Z

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    .line 1018
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V

    .line 1019
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    .line 1020
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    .line 1021
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 1022
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    .line 1024
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$702(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I

    .line 1026
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Lmiuix/animation/physics/SpringAnimationSet;)Lmiuix/animation/physics/SpringAnimationSet;

    .line 1027
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    const/16 p4, 0x8

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    .line 1028
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_3

    .line 1029
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setVisibility(I)V

    :cond_3
    return-void
.end method
