.class public Lcom/google/android/gsf/login/LearnMoreActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "LearnMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 78
    return-void
.end method

.method protected static linkifyAndSetText(Lcom/google/android/gsf/login/BaseActivity;Landroid/widget/TextView;III)V
    .locals 20
    .param p0, "parent"    # Lcom/google/android/gsf/login/BaseActivity;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "titleId"    # I
    .param p4, "msgId"    # I

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 105
    .local v13, "res":Landroid/content/res/Resources;
    new-instance v12, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    .local v12, "msg":Landroid/text/SpannableString;
    const/16 v17, 0x0

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v18

    const-class v19, Landroid/text/Annotation;

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/Annotation;

    .line 107
    .local v14, "spans":[Landroid/text/Annotation;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    move-object v4, v14

    .local v4, "arr$":[Landroid/text/Annotation;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v3, v4, v8

    .line 109
    .local v3, "annotation":Landroid/text/Annotation;
    invoke-virtual {v3}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 111
    .local v16, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 112
    .local v15, "start":I
    invoke-virtual {v12, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 113
    .local v7, "end":I
    new-instance v10, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v10, v0, v1, v2}, Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;-><init>(Lcom/google/android/gsf/login/BaseActivity;II)V

    .line 114
    .local v10, "link":Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;
    invoke-virtual {v12, v10}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v10, v15, v7, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v7    # "end":I
    .end local v10    # "link":Lcom/google/android/gsf/login/LearnMoreActivity$LinkSpan;
    .end local v15    # "start":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v6

    .line 116
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v17, "GLSActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to convert value \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' to a number"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    .end local v3    # "annotation":Landroid/text/Annotation;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    const/16 v17, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 120
    move-object v11, v5

    .line 121
    .local v11, "linkedMsg":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->finish()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "title_id"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 52
    .local v4, "titleId":I
    if-ne v4, v8, :cond_0

    .line 53
    const-string v6, "GLSActivity"

    const-string v7, "LearnMoreActivity.onCreate(): no title passed; exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->finish()V

    .line 56
    :cond_0
    const-string v6, "msg_id"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, "msgId":I
    if-ne v2, v8, :cond_1

    .line 58
    const-string v6, "GLSActivity"

    const-string v7, "LearnMoreActivity.onCreate(): no msg passed; exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LearnMoreActivity;->finish()V

    .line 62
    :cond_1
    const v6, 0x7f030010

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->setContentView(I)V

    .line 63
    const v6, 0x7f080007

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 64
    .local v5, "titleView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 65
    const v6, 0x7f08003c

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "msgView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    const v6, 0x7f080018

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, "backButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
