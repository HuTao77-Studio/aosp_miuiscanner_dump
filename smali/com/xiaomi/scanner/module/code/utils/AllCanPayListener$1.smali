.class Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;
.super Ljava/lang/Object;
.source "AllCanPayListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->showChooseDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->access$000(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V

    return-void
.end method
