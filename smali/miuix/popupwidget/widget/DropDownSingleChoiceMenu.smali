.class public Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->internalDismiss()V

    return-void
.end method

.method static synthetic access$202(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)I
    .locals 0

    .line 26
    iput p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return p1
.end method

.method private internalDismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;)V
    .locals 1

    .line 175
    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$4;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$4;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 144
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()I
    .locals 1

    .line 51
    iget v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 159
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    .line 56
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAccessibilityDelegate(Landroid/view/View;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mListener:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    .line 47
    iput p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return-void
.end method

.method public show()V
    .locals 5

    .line 68
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 74
    new-instance v1, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V

    .line 87
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V

    .line 88
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 90
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 91
    new-instance v1, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/popupwidget/R$layout;->miuix_appcompat_select_dropdown_popup_singlechoice:I

    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    new-instance v1, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;-><init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 137
    iget v2, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 138
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->show()V

    :cond_1
    :goto_0
    return-void
.end method
