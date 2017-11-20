.class public final Lcom/android/ex/editstyledtext/EditStyledText;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/CharSequence;

.field private static b:Ljava/lang/CharSequence;

.field private static c:Ljava/lang/CharSequence;

.field private static final h:Landroid/text/NoCopySpan$Concrete;


# instance fields
.field private d:Ljava/util/ArrayList;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Lcom/android/ex/editstyledtext/i;

.field private g:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->h:Landroid/text/NoCopySpan$Concrete;

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/i;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    return-object v0
.end method

.method static synthetic a(Landroid/text/Spannable;)V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->h:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;II)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->a(I)V

    .line 543
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->a(I)V

    .line 557
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->a(I)V

    .line 562
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- onFixSelectedItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- handleComplete:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/ex/editstyledtext/i;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/ex/editstyledtext/i;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/ex/editstyledtext/i;->a:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/ex/editstyledtext/i;->h:I

    iget v2, v0, Lcom/android/ex/editstyledtext/i;->i:I

    if-ne v1, v2, :cond_1

    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- cancel handle complete:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/ex/editstyledtext/i;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- handleCancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v0, Lcom/android/ex/editstyledtext/i;->f:I

    iput v4, v0, Lcom/android/ex/editstyledtext/i;->g:I

    iput-boolean v4, v0, Lcom/android/ex/editstyledtext/i;->a:Z

    const v1, 0xffffff

    iput v1, v0, Lcom/android/ex/editstyledtext/i;->j:I

    iput v4, v0, Lcom/android/ex/editstyledtext/i;->k:I

    iput-boolean v4, v0, Lcom/android/ex/editstyledtext/i;->d:Z

    iput-boolean v4, v0, Lcom/android/ex/editstyledtext/i;->b:Z

    iput-boolean v4, v0, Lcom/android/ex/editstyledtext/i;->c:Z

    iput-boolean v4, v0, Lcom/android/ex/editstyledtext/i;->e:Z

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->d()V

    iget-object v1, v0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- unblockSoftKey:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v0, Lcom/android/ex/editstyledtext/i;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/ex/editstyledtext/i;->a:Z

    iget-object v1, v0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v2, v0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v3, v0, Lcom/android/ex/editstyledtext/i;->g:I

    invoke-static {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v2, v0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v0, v0, Lcom/android/ex/editstyledtext/i;->g:I

    invoke-static {v1, v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 626
    return-void

    .line 625
    :cond_1
    iget v1, v0, Lcom/android/ex/editstyledtext/i;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/ex/editstyledtext/i;->g:I

    :cond_2
    iget-object v1, v0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    iget v2, v0, Lcom/android/ex/editstyledtext/i;->f:I

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/a;->b(I)Z

    iget-object v1, v0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, v0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/text/Spannable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/c;

    .line 469
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/c;->a()Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 470
    goto :goto_0

    :cond_0
    move v1, v0

    .line 472
    :cond_1
    return v1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->a(I)V

    .line 548
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-boolean v0, v0, Lcom/android/ex/editstyledtext/i;->a:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-boolean v0, v0, Lcom/android/ex/editstyledtext/i;->b:Z

    return v0
.end method

.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 273
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->b()V

    .line 276
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget v0, v0, Lcom/android/ex/editstyledtext/i;->l:I

    return v0
.end method

.method protected final onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 330
    new-instance v4, Lcom/android/ex/editstyledtext/j;

    invoke-direct {v4, p0, v2}, Lcom/android/ex/editstyledtext/j;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;B)V

    .line 331
    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 332
    const v0, 0xffff01

    sget-object v3, Lcom/android/ex/editstyledtext/EditStyledText;->a:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-object v0, v3, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {v5, v2, v6, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    array-length v0, v0

    if-gtz v0, :cond_1

    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {v5, v2, v6, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    array-length v0, v0

    if-gtz v0, :cond_1

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {v5, v2, v6, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v0, v0

    if-gtz v0, :cond_1

    iget v0, v3, Lcom/android/ex/editstyledtext/i;->l:I

    const v3, 0xffffff

    if-eq v0, v3, :cond_5

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 336
    const v0, 0xffff02

    sget-object v3, Lcom/android/ex/editstyledtext/EditStyledText;->b:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-object v3, v0, Lcom/android/ex/editstyledtext/i;->q:Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/ex/editstyledtext/i;->q:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v0, v0, Lcom/android/ex/editstyledtext/i;->q:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v5, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    array-length v6, v0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_6

    aget-object v7, v0, v3

    instance-of v8, v7, Lcom/android/ex/editstyledtext/f;

    if-nez v8, :cond_3

    instance-of v8, v7, Lcom/android/ex/editstyledtext/h;

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const-string v9, ""

    invoke-virtual {v5, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 335
    goto :goto_0

    .line 339
    :cond_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    .line 340
    const v0, 0x1020022

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->c:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 343
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 339
    goto :goto_2
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/android/ex/editstyledtext/k;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/ex/editstyledtext/k;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->g:Landroid/view/inputmethod/InputConnection;

    .line 372
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->g:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 378
    if-eqz p1, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->f()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->b()V

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 261
    instance-of v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    check-cast p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    .line 266
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->a:I

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-direct {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget v0, v0, Lcom/android/ex/editstyledtext/i;->l:I

    iput v0, v1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->a:I

    .line 256
    return-object v1
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 16

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    if-eqz v3, :cond_9

    .line 349
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v7

    const-string v3, "EditStyledText.EditorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSpanNext:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v8, p2, p4

    move/from16 v0, p2

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, p2

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-class v5, Ljava/lang/Object;

    invoke-interface {v7, v3, v3, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    array-length v10, v9

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v10, :cond_5

    aget-object v11, v9, v5

    instance-of v3, v11, Lcom/android/ex/editstyledtext/g;

    if-nez v3, :cond_0

    instance-of v3, v11, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_4

    :cond_0
    invoke-interface {v7, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v7, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    const-string v3, "EditStyledText.EditorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "spantype:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v11, Lcom/android/ex/editstyledtext/g;

    if-nez v3, :cond_1

    instance-of v3, v11, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_10

    :cond_1
    iget-object v3, v6, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/ex/editstyledtext/i;->a(Landroid/text/Editable;I)I

    move-result v3

    :goto_1
    if-ge v3, v12, :cond_3

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_3

    invoke-interface {v7, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_3
    if-le v12, v4, :cond_2

    const/16 v3, 0x21

    invoke-interface {v7, v11, v4, v13, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    instance-of v3, v11, Lcom/android/ex/editstyledtext/f;

    if-eqz v3, :cond_2

    invoke-interface {v7, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v8, :cond_2

    if-lez v8, :cond_2

    iget-object v3, v6, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    add-int/lit8 v11, v8, -0x1

    invoke-interface {v3, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v11, 0xa

    if-eq v3, v11, :cond_2

    iget-object v3, v6, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v11, "\n"

    invoke-interface {v3, v8, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v3, v6, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3, v8}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_2

    .line 350
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/ex/editstyledtext/i;->a(Landroid/text/Editable;III)V

    .line 351
    move/from16 v0, p4

    move/from16 v1, p3

    if-le v0, v1, :cond_e

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const-string v3, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--- setTextComposingMask:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p2

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, p2

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-boolean v3, v4, Lcom/android/ex/editstyledtext/i;->d:Z

    if-eqz v3, :cond_a

    iget v3, v4, Lcom/android/ex/editstyledtext/i;->j:I

    const v7, 0xffffff

    if-eq v3, v7, :cond_a

    iget v3, v4, Lcom/android/ex/editstyledtext/i;->j:I

    :goto_3
    iget-object v7, v4, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v7, v7, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget v7, v7, Lcom/android/ex/editstyledtext/i;->l:I

    const-string v8, "EditStyledText"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--- fg:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",bg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Lcom/android/ex/editstyledtext/i;->d:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/ex/editstyledtext/i;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v7, :cond_8

    const/high16 v3, -0x80000000

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    or-int/2addr v3, v7

    iget-object v7, v4, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    if-eq v7, v3, :cond_7

    :cond_6
    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v7, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v7, v4, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    :cond_7
    iget-object v3, v4, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, v4, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    const/16 v7, 0x21

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 356
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-boolean v3, v3, Lcom/android/ex/editstyledtext/i;->d:Z

    if-eqz v3, :cond_9

    .line 357
    move/from16 v0, p4

    move/from16 v1, p3

    if-le v0, v1, :cond_f

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/i;->a()V

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/editstyledtext/EditStyledText;->i()V

    .line 365
    :cond_9
    :goto_5
    invoke-super/range {p0 .. p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 366
    return-void

    .line 352
    :cond_a
    iget-object v3, v4, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    if-ltz v5, :cond_b

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-le v5, v7, :cond_c

    :cond_b
    const/high16 v3, -0x1000000

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-class v7, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v3, v5, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ForegroundColorSpan;

    array-length v7, v3

    if-lez v7, :cond_d

    const/4 v7, 0x0

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    goto/16 :goto_3

    :cond_d
    const/high16 v3, -0x1000000

    goto/16 :goto_3

    .line 353
    :cond_e
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_8

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/i;->c()V

    goto :goto_4

    .line 360
    :cond_f
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/android/ex/editstyledtext/i;->a(I)V

    goto :goto_5

    :cond_10
    move v3, v4

    goto/16 :goto_1
.end method

.method public final onTextContextMenuItem(I)Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v3

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 281
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    .line 283
    :sswitch_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->a(Z)V

    move v0, v1

    .line 284
    goto :goto_2

    .line 286
    :sswitch_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const-string v3, "EditStyledText.EditorManager"

    const-string v4, "--- onClickSelect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v3, v0, Lcom/android/ex/editstyledtext/i;->g:I

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v3, v5}, Lcom/android/ex/editstyledtext/a;->b(I)Z

    :goto_3
    iget-object v3, v0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v4, v0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v0, v0, Lcom/android/ex/editstyledtext/i;->g:I

    invoke-static {v3, v4, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 287
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const-string v0, "EditStyledText.EditorManager"

    const-string v4, "--- blockSoftKey:"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EditStyledText.EditorManager"

    const-string v4, "--- hidesoftkey"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v4, v3, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    iput v4, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->a:I

    iget-object v0, v3, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v4, v3, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    iput v4, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->b:I

    iget-object v0, v3, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v3, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v4, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_1
    iput-boolean v1, v3, Lcom/android/ex/editstyledtext/i;->b:Z

    goto :goto_1

    .line 286
    :cond_2
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->d()V

    iget-object v3, v0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v3, v5}, Lcom/android/ex/editstyledtext/a;->b(I)Z

    goto :goto_3

    .line 290
    :sswitch_2
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->i()V

    goto/16 :goto_1

    .line 293
    :sswitch_3
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/ex/editstyledtext/i;->a(I)V

    move v0, v1

    .line 294
    goto/16 :goto_2

    .line 296
    :sswitch_4
    if-eqz v0, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->g()V

    :goto_4
    move v0, v1

    .line 302
    goto/16 :goto_2

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0, v2}, Lcom/android/ex/editstyledtext/i;->a(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->g()V

    goto :goto_4

    .line 304
    :sswitch_5
    if-eqz v0, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->h()V

    :goto_5
    move v0, v1

    .line 310
    goto/16 :goto_2

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0, v2}, Lcom/android/ex/editstyledtext/i;->a(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->h()V

    goto :goto_5

    .line 312
    :sswitch_6
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/ex/editstyledtext/i;->a(I)V

    move v0, v1

    .line 313
    goto/16 :goto_2

    .line 315
    :sswitch_7
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-object v0, v0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/android/ex/editstyledtext/a;->a(I)V

    move v0, v1

    .line 316
    goto/16 :goto_2

    .line 318
    :sswitch_8
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->f()V

    move v0, v1

    .line 319
    goto/16 :goto_2

    .line 321
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->b()V

    move v0, v1

    .line 322
    goto/16 :goto_2

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0xffff01 -> :sswitch_6
        0xffff02 -> :sswitch_7
        0xffff03 -> :sswitch_8
        0xffff04 -> :sswitch_9
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_3
        0x1020028 -> :sswitch_1
        0x1020029 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->cancelLongPress()V

    .line 222
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget-boolean v1, v0, Lcom/android/ex/editstyledtext/i;->a:Z

    .line 224
    if-nez v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->f()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 229
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iget v4, v4, Lcom/android/ex/editstyledtext/i;->g:I

    if-nez v4, :cond_1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/i;->a(II)V

    .line 242
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->a()V

    .line 243
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->c()V

    .line 247
    :goto_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/i;->a(II)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 248
    :cond_4
    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 712
    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    .line 713
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    iput p1, v0, Lcom/android/ex/editstyledtext/i;->l:I

    .line 718
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->f:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->b()V

    .line 719
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
