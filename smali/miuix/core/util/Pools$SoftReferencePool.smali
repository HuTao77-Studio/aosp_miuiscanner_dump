.class public Lmiuix/core/util/Pools$SoftReferencePool;
.super Lmiuix/core/util/Pools$BasePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftReferencePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/core/util/Pools$BasePool<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    .line 500
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/Pools$BasePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 1

    .line 496
    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic close()V
    .locals 0

    .line 496
    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->close()V

    return-void
.end method

.method final createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation

    .line 505
    invoke-static {p1, p2}, Lmiuix/core/util/Pools;->onSoftReferencePoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    move-result-object p1

    return-object p1
.end method

.method final destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 510
    check-cast p1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    invoke-static {p1, p2}, Lmiuix/core/util/Pools;->onSoftReferencePoolClose(Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;I)V

    return-void
.end method

.method public bridge synthetic getSize()I
    .locals 1

    .line 496
    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->getSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .line 496
    invoke-super {p0, p1}, Lmiuix/core/util/Pools$BasePool;->release(Ljava/lang/Object;)V

    return-void
.end method
