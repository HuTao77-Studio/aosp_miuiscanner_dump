.class public Lmiuix/androidbasewidget/widget/EditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;
    }
.end annotation


# static fields
.field private static final LEVEL_ERROR:I = 0x194

.field private static final LEVEL_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EditText"


# instance fields
.field private final DEFAULT_TEXT_HANDLE_AND_CURSOR_COLOR:I

.field private isAddListener:Z

.field private mErrorWatcher:Landroid/text/TextWatcher;

.field private mTextHandleAndCursorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;-><init>(Lmiuix/androidbasewidget/widget/EditText;Lmiuix/androidbasewidget/widget/EditText$1;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    .line 41
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_handle_and_cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiuix/androidbasewidget/widget/EditText;->DEFAULT_TEXT_HANDLE_AND_CURSOR_COLOR:I

    .line 42
    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->EditText:[I

    sget v2, Lmiuix/androidbasewidget/R$style;->Widget_EditText_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lmiuix/androidbasewidget/R$styleable;->EditText_textHandleAndCursorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/EditText;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    return p0
.end method

.method static synthetic access$102(Lmiuix/androidbasewidget/widget/EditText;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    return p1
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/EditText;)Landroid/text/TextWatcher;
    .locals 0

    .line 18
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private obtainHighlightColor()I
    .locals 4

    .line 49
    iget v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 50
    iget v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 51
    iget v2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x26

    .line 52
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .line 57
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onPreDraw()Z

    move-result v0

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 59
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/EditText;->obtainHighlightColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/androidbasewidget/widget/EditText;->setHighlightColor(I)V

    .line 60
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 62
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 63
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 64
    iget v5, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    iget v6, p0, Lmiuix/androidbasewidget/widget/EditText;->DEFAULT_TEXT_HANDLE_AND_CURSOR_COLOR:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x4

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    const/4 v8, 0x2

    aput-object v3, v6, v8

    const/4 v8, 0x3

    aput-object v4, v6, v8

    :goto_0
    if-ge v7, v5, :cond_0

    .line 66
    aget-object v8, v6, v7

    .line 67
    iget v9, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, v1}, Lmiuix/androidbasewidget/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0, v2}, Lmiuix/androidbasewidget/widget/EditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0, v3}, Lmiuix/androidbasewidget/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0, v4}, Lmiuix/androidbasewidget/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return v0
.end method

.method public setMiuiStyleError(Ljava/lang/CharSequence;)V
    .locals 1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 83
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    .line 85
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method
