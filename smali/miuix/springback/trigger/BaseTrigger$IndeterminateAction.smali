.class public abstract Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;
.super Lmiuix/springback/trigger/BaseTrigger$Action;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/BaseTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndeterminateAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;,
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_OFFSET_POINT:I

.field static final DEFAULT_TRIGGER_TEXTIDS:[I


# instance fields
.field protected mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mCountNoData:I

.field public mTriggerTextIDs:[I

.field public mTriggerTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 202
    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_pull_to_refresh:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_release_to_refresh:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshing:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshed:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 220
    invoke-static {}, Lmiuix/springback/trigger/BaseTrigger;->access$200()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 208
    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 209
    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-ltz p1, :cond_0

    .line 224
    iput-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid offsetPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 208
    sget-object p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 209
    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 240
    iput-object p1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void
.end method

.method public constructor <init>(II[I)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 208
    sget-object p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 209
    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-eqz p3, :cond_0

    .line 245
    array-length p2, p3

    array-length p1, p1

    if-ne p2, p1, :cond_0

    .line 248
    iput-object p3, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    .line 246
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text Ids"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[I)V
    .locals 2

    .line 228
    invoke-static {}, Lmiuix/springback/trigger/BaseTrigger;->access$200()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 208
    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 209
    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 232
    array-length p1, p2

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 235
    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text Ids"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid offsetPoint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCountNoData()I
    .locals 1

    .line 216
    iget v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    return v0
.end method

.method public isNoData()Z
    .locals 1

    .line 212
    iget v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyActionNoData()V
    .locals 2

    .line 252
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    .line 253
    iget v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 254
    invoke-interface {v0, p0, v1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V

    :cond_0
    return-void
.end method

.method public notifyLoadCancel()V
    .locals 1

    .line 286
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_0
    return-void
.end method

.method public notifyLoadComplete()V
    .locals 1

    .line 259
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_0
    return-void
.end method

.method public notifyLoadFail()V
    .locals 1

    .line 265
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_0
    return-void
.end method

.method public notifyTriggerTextIndex(ILjava/lang/String;)V
    .locals 1

    .line 277
    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 280
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 278
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIndeterminateAction()V
    .locals 1

    .line 271
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_0
    return-void
.end method
