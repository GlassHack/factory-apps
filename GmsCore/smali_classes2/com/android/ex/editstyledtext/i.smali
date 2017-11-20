.class final Lcom/android/ex/editstyledtext/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Landroid/text/style/BackgroundColorSpan;

.field n:Lcom/android/ex/editstyledtext/EditStyledText;

.field o:Lcom/android/ex/editstyledtext/a;

.field p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field q:Landroid/text/SpannableStringBuilder;

.field final synthetic r:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method static a(Landroid/text/Editable;I)I
    .locals 4

    .prologue
    .line 1744
    move v0, p1

    .line 1745
    :goto_0
    if-lez v0, :cond_0

    .line 1746
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1747
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1751
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- findLineStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v0
.end method

.method private static b(Landroid/text/Editable;I)I
    .locals 4

    .prologue
    .line 1758
    move v0, p1

    .line 1759
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1760
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1761
    add-int/lit8 v0, v0, 0x1

    .line 1766
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- findLineEnd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v0

    .line 1759
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1007
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/i;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/a;->b(I)Z

    .line 1011
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->g:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1013
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/a;->a(I)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->g:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 975
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 1798
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- showsoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->b:Z

    if-eqz v0, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->a:I

    .line 1804
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->b:I

    .line 1805
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->r:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1808
    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->p:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->r:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public final a(Landroid/text/Editable;III)V
    .locals 11

    .prologue
    .line 1323
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSpanPrevious:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    add-int v4, p2, p4

    .line 1326
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1327
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1328
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1329
    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    .line 1330
    instance-of v0, v7, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Lcom/android/ex/editstyledtext/g;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    .line 1332
    :cond_0
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1333
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1335
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "spantype:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    instance-of v0, v7, Lcom/android/ex/editstyledtext/g;

    if-nez v0, :cond_1

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_3

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/ex/editstyledtext/i;->b(Landroid/text/Editable;I)I

    move-result v0

    .line 1346
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1348
    const-string v1, "EditStyledText.EditorManager"

    const-string v9, "updateSpanPrevious: extend span"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v1, 0x21

    invoke-interface {p1, v7, v8, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1342
    :cond_3
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->c:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 1343
    goto :goto_1

    .line 1353
    :cond_4
    instance-of v0, v7, Lcom/android/ex/editstyledtext/f;

    if-eqz v0, :cond_2

    .line 1354
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1356
    if-le p3, p4, :cond_5

    .line 1360
    const-string v8, ""

    invoke-interface {p1, v0, v1, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1361
    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .line 1365
    :cond_5
    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 1372
    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 1017
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->o:Lcom/android/ex/editstyledtext/a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/a;->a(I)V

    .line 1020
    :cond_0
    if-eqz p1, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->f:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->g:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1023
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1129
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onRefreshStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1132
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1133
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v5

    .line 1134
    const-class v0, Lcom/android/ex/editstyledtext/f;

    invoke-interface {v4, v3, v2, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/f;

    .line 1135
    array-length v6, v0

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    .line 1136
    invoke-virtual {v7, v5}, Lcom/android/ex/editstyledtext/f;->a(I)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_0
    const-class v1, Lcom/android/ex/editstyledtext/g;

    invoke-interface {v4, v3, v2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/g;

    .line 1139
    array-length v5, v1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 1140
    iget-object v7, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/editstyledtext/g;->a(I)V

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1143
    :cond_1
    array-length v0, v0

    if-lez v0, :cond_2

    .line 1146
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/i;->m:Landroid/text/style/BackgroundColorSpan;

    .line 1260
    :cond_0
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 1594
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- offSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/text/Spannable;)V

    .line 1598
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1599
    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->n:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/i;->g:I

    .line 1601
    return-void
.end method
