.class Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .locals 0

    .line 3102
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3107
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3111
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->dataSetChanged()V

    return-void
.end method
