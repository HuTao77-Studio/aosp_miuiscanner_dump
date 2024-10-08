.class public abstract Lmiuix/springback/trigger/CustomTrigger;
.super Lmiuix/springback/trigger/BaseTrigger;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;,
        Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;,
        Lmiuix/springback/trigger/CustomTrigger$ActionComplete;,
        Lmiuix/springback/trigger/CustomTrigger$ActionStart;,
        Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;,
        Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;,
        Lmiuix/springback/trigger/CustomTrigger$Tracking;,
        Lmiuix/springback/trigger/CustomTrigger$Idle;
    }
.end annotation


# static fields
.field private static final ACTION_COMPLETE_HAPTIC_THRESHOLD:I = 0x1388

.field private static final OFFSET_RESET_STATE:F = 0.25f

.field private static final OFFSET_SIMPLE_VELOCITY_Y:F = 1000.0f

.field private static final TAG:Ljava/lang/String; = "CustomTrigger"


# instance fields
.field protected final mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

.field private mActionIndex:I

.field protected final mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

.field protected final mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

.field private mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mContainer:Landroid/widget/RelativeLayout;

.field protected mContext:Landroid/content/Context;

.field private mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

.field private mCurrentState:Lmiuix/springback/trigger/TriggerState;

.field private mEnterTime:J

.field protected final mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

.field private mIndicatorContainer:Landroid/widget/FrameLayout;

.field private mIsExitISimpleAction:Z

.field private mIsExitIndeterminateAction:Z

.field private mIsExitIndeterminateUpAction:Z

.field private mIsStartIndeterminate:Z

.field private mIsStartIndeterminateUp:Z

.field protected mLastScrollDistance:I

.field public mLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadingContainer:Landroid/view/View;

.field private mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

.field private mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

.field private mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

.field private mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

.field private mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

.field private mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

.field private mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

.field protected mScrollDistance:I

.field private mScrollState:I

.field private mScrollerFinished:Z

.field private mSimpleActionView:Landroid/view/View;

.field protected final mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

.field private mUpActionBegin:Z

.field private mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

.field private mUpContainer:Landroid/view/View;

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

.field private mVelocityY:F

.field protected final mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    const-wide/16 v1, -0x1

    .line 55
    iput-wide v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    .line 57
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 58
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 59
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 60
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminate:Z

    .line 61
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminateUp:Z

    .line 285
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$1;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$1;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 312
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$2;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$2;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    .line 341
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$3;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$3;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    .line 398
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$4;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$4;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 489
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$5;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$5;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 896
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$Idle;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 897
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$Tracking;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 898
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 899
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 900
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 901
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    .line 904
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    .line 65
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/springback/trigger/CustomTrigger;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminate:Z

    return p0
.end method

.method static synthetic access$1002(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminate:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/springback/trigger/CustomTrigger;)J
    .locals 2

    .line 21
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getActionIntervalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lmiuix/springback/trigger/CustomTrigger;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->resetEnterTime()V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsStart(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1500(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsExit(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1600(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsTriggered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1700(Lmiuix/springback/trigger/CustomTrigger;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    return p0
.end method

.method static synthetic access$1702(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    return p1
.end method

.method static synthetic access$1802(Lmiuix/springback/trigger/CustomTrigger;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsEntered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/springback/trigger/CustomTrigger;)I
    .locals 0

    .line 21
    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollState:I

    return p0
.end method

.method static synthetic access$2000(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsActivated(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$202(Lmiuix/springback/trigger/CustomTrigger;I)I
    .locals 0

    .line 21
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollState:I

    return p1
.end method

.method static synthetic access$2100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsAnimator(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$2200(Lmiuix/springback/trigger/CustomTrigger;)I
    .locals 0

    .line 21
    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    return p0
.end method

.method static synthetic access$2202(Lmiuix/springback/trigger/CustomTrigger;I)I
    .locals 0

    .line 21
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    return p1
.end method

.method static synthetic access$302(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/springback/trigger/CustomTrigger;)F
    .locals 0

    .line 21
    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    return p0
.end method

.method static synthetic access$502(Lmiuix/springback/trigger/CustomTrigger;F)F
    .locals 0

    .line 21
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    return p1
.end method

.method static synthetic access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;
    .locals 0

    .line 21
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return-object p1
.end method

.method static synthetic access$700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->actionRestartOffsetPoint(Lmiuix/springback/trigger/BaseTrigger$Action;)F

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminateUp:Z

    return p1
.end method

.method static synthetic access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    return-object p0
.end method

.method private actionRestartOffsetPoint(Lmiuix/springback/trigger/BaseTrigger$Action;)F
    .locals 3

    if-eqz p1, :cond_0

    .line 321
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateViewRestartOffsetPoint()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 323
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpViewRestartOffsetPoint()F

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 325
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_2

    .line 326
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleViewRestartOffsetPoint()F

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 329
    iget v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    const/high16 v2, 0x3e800000    # 0.25f

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerPoint:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mEnterPoint:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, v2

    .line 331
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mEnterPoint:I

    :goto_1
    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 333
    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz v0, :cond_4

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p1, :cond_4

    .line 334
    iget p1, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, v2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    goto :goto_1

    :cond_4
    return v1
.end method

.method private getActionIntervalTime()J
    .locals 5

    .line 889
    iget-wide v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 892
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getIndeterminateUpViewRestartOffsetPoint()F
    .locals 1

    .line 1202
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1203
    invoke-interface {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->getViewRestartOffsetPoint()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getIndeterminateViewRestartOffsetPoint()F
    .locals 1

    .line 1078
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1079
    invoke-interface {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->getViewRestartOffsetPoint()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getSimpleViewRestartOffsetPoint()F
    .locals 1

    .line 1140
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->getViewRestartOffsetPoint()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 69
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 71
    new-instance p1, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {p1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 72
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 73
    sget v0, Lmiuix/springback/R$id;->indicator_container:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private notifyIndeterminateUpViewActivated(I)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1234
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewActivated(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewActivating(I)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1240
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewActivating(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewEntered(I)V
    .locals 1

    .line 1221
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1222
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewEntered(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewEntering(I)V
    .locals 1

    .line 1227
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1228
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewEntering(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewExit(I)V
    .locals 1

    .line 1257
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1258
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewExit(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewFinished(I)V
    .locals 1

    .line 1251
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1252
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewFinished(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewStart(I)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1210
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewStart(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewStarting(I)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1216
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewStarting(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewTriggered(I)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz v0, :cond_0

    .line 1246
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewTriggered(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewActivated(I)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1110
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewActivated(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewActivating(I)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1116
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewActivating(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewEntered(I)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewEntered(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewEntering(I)V
    .locals 1

    .line 1103
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1104
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewEntering(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewExit(I)V
    .locals 1

    .line 1133
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewExit(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewFinished(I)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewFinished(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewStart(I)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1086
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewStart(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewStarting(I)V
    .locals 1

    .line 1091
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1092
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewStarting(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewTriggered(I)V
    .locals 1

    .line 1121
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz v0, :cond_0

    .line 1122
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewTriggered(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewActivated(I)V
    .locals 1

    .line 1171
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1172
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewActivated(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewActivating(I)V
    .locals 1

    .line 1177
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1178
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewActivating(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewEntered(I)V
    .locals 1

    .line 1159
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1160
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewEntered(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewEntering(I)V
    .locals 1

    .line 1165
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1166
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewEntering(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewExit(I)V
    .locals 1

    .line 1195
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1196
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewExit(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewFinished(I)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1190
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewFinished(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewStart(I)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewStart(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewStarting(I)V
    .locals 1

    .line 1153
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1154
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewStarting(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewTriggered(I)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz v0, :cond_0

    .line 1184
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewTriggered(I)V

    :cond_0
    return-void
.end method

.method private notifyViewsActivated(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1008
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    .line 1009
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewActivated(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1010
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    .line 1011
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewActivated(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1012
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    .line 1013
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewActivated(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsAnimator(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1043
    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p2, :cond_2

    .line 1044
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_0

    .line 1045
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewStarting(I)V

    .line 1047
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge p2, v0, :cond_1

    .line 1048
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewEntering(I)V

    .line 1050
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    .line 1051
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewActivating(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    .line 1053
    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p2, :cond_5

    .line 1054
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_3

    .line 1055
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewStarting(I)V

    .line 1057
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge p2, v0, :cond_4

    .line 1058
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewEntering(I)V

    .line 1060
    :cond_4
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    .line 1061
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewActivating(I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    .line 1063
    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p2, :cond_8

    .line 1064
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_6

    .line 1065
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewStarting(I)V

    .line 1067
    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge p2, v0, :cond_7

    .line 1068
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewEntering(I)V

    .line 1070
    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    .line 1071
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewActivating(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method private notifyViewsEntered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 998
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    .line 999
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewEntered(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1000
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    .line 1001
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewEntered(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1002
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    .line 1003
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewEntered(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsExit(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1028
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewExit(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1030
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    .line 1031
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewExit(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1032
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    .line 1033
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewExit(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsStart(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 988
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    if-eq p2, p1, :cond_0

    .line 989
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewStart(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 990
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    if-eq p2, p1, :cond_1

    .line 991
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewStart(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 992
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_2

    if-eq p2, p1, :cond_2

    .line 993
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewStart(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsTriggered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1018
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    .line 1019
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewTriggered(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1020
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    .line 1021
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewTriggered(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1022
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    .line 1023
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewTriggered(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetEnterTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 885
    iput-wide v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    return-void
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 107
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 108
    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 109
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 110
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    iput-object v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 111
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-nez v0, :cond_5

    .line 112
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_up_layout:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 117
    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 121
    :cond_1
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_3

    .line 122
    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 123
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 124
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    iput-object v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 125
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-nez v0, :cond_5

    .line 126
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-nez p1, :cond_2

    .line 129
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_loading_progress:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/springback/R$layout;->miuix_sbl_trigger_tracking_progress:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lmiuix/springback/R$layout;->miuix_sbl_trigger_tracking_progress_label:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 136
    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 140
    :cond_3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_5

    .line 141
    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 142
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 143
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 144
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-nez p1, :cond_4

    .line 147
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_simple_indicator:I

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 149
    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public attach(Lmiuix/springback/view/SpringBackLayout;)V
    .locals 6

    .line 231
    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->springBackEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p1, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 234
    :cond_0
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 235
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 238
    :goto_0
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v4}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 239
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v4, v0}, Lmiuix/springback/view/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 242
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 245
    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 247
    :goto_1
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 248
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 251
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    :cond_6
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 255
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V

    .line 256
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->addOnScrollListener(Lmiuix/springback/view/SpringBackLayout$OnScrollListener;)V

    return-void
.end method

.method public getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;
    .locals 1

    .line 101
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return-object v0
.end method

.method public getCurrentState()Lmiuix/springback/trigger/TriggerState;
    .locals 1

    .line 97
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    return-object v0
.end method

.method public getIndeterminateUpView()Landroid/view/View;
    .locals 1

    .line 174
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    return-object v0
.end method

.method public getIndeterminateView()Landroid/view/View;
    .locals 1

    .line 170
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method public getIndicatorContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 162
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getRootContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 158
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSimpleActionView()Landroid/view/View;
    .locals 1

    .line 166
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    return-object v0
.end method

.method public isActionRunning()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 2

    .line 224
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isExitIndeterminateAction()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    return v0
.end method

.method public isExitIndeterminateUpAction()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    return v0
.end method

.method public isExitSimpleAction()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    return v0
.end method

.method public abstract onSpringBackLayoutChange(Landroid/view/View;IIIIIIII)V
.end method

.method public abstract onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V
.end method

.method public removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 4

    .line 191
    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 192
    instance-of v3, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v3, :cond_0

    .line 193
    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 194
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 195
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, p1}, Lmiuix/springback/view/SpringBackLayout;->removeView(Landroid/view/View;)V

    .line 196
    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 198
    instance-of v3, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v3, :cond_1

    .line 199
    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 200
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 201
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 202
    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 204
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p1, :cond_2

    .line 205
    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 206
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 207
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 208
    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    :cond_2
    :goto_0
    return v0
.end method

.method public setOnActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    return-void
.end method

.method public setOnIndeterminateActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    return-void
.end method

.method public setOnIndeterminateUpActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    return-void
.end method

.method public setOnSimpleActionViewListener(Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    return-void
.end method

.method public setOnUpActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    return-void
.end method

.method protected transition(Lmiuix/springback/trigger/TriggerState;)V
    .locals 1

    .line 866
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    .line 867
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne p1, v0, :cond_3

    .line 868
    iget-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz p1, :cond_2

    .line 869
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyFinished()V

    .line 870
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    .line 871
    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewFinished(I)V

    goto :goto_0

    .line 872
    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_1

    .line 873
    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewFinished(I)V

    goto :goto_0

    .line 874
    :cond_1
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p1, :cond_2

    .line 875
    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewFinished(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    const/4 p1, -0x1

    .line 879
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    .line 880
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p1}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    :cond_3
    return-void
.end method
