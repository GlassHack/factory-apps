.class public Lcom/google/android/gsf/login/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;,
        Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;
    }
.end annotation


# static fields
.field private static final ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;


# instance fields
.field private mParent:Lcom/google/android/gsf/login/BaseActivity;

.field private mPolicy:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLUS_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLAY_TOS_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->CHROME_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->CHROME_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/android/gsf/login/BaseActivity;
    .param p2, "policy"    # Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/google/android/gsf/login/LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    .line 306
    iput-object p2, p0, Lcom/google/android/gsf/login/LinkSpan;->mPolicy:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 307
    return-void
.end method

.method static linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;
    .locals 21
    .param p0, "parent"    # Lcom/google/android/gsf/login/BaseActivity;
    .param p1, "resId"    # I

    .prologue
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 322
    .local v14, "res":Landroid/content/res/Resources;
    new-instance v13, Landroid/text/SpannableString;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 323
    .local v13, "msg":Landroid/text/SpannableString;
    const/16 v18, 0x0

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v19

    const-class v20, Landroid/text/Annotation;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/Annotation;

    .line 324
    .local v15, "spans":[Landroid/text/Annotation;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 325
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    move-object v4, v15

    .local v4, "arr$":[Landroid/text/Annotation;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v3, v4, v9

    .line 326
    .local v3, "annotation":Landroid/text/Annotation;
    const-string v18, "id"

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 327
    invoke-virtual {v3}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 329
    .local v17, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 330
    .local v8, "found":Z
    const/4 v10, 0x0

    .local v10, "id":I
    :goto_1
    :try_start_0
    sget-object v18, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 331
    sget-object v18, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->getTag()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 332
    invoke-virtual {v13, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 333
    .local v16, "start":I
    invoke-virtual {v13, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 334
    .local v7, "end":I
    new-instance v12, Lcom/google/android/gsf/login/LinkSpan;

    sget-object v18, Lcom/google/android/gsf/login/LinkSpan;->ANDROID_POLICIES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aget-object v18, v18, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/google/android/gsf/login/LinkSpan;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V

    .line 335
    .local v12, "link":Lcom/google/android/gsf/login/LinkSpan;
    invoke-virtual {v13, v12}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v5, v12, v0, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 336
    const/4 v8, 0x1

    .line 330
    .end local v7    # "end":I
    .end local v12    # "link":Lcom/google/android/gsf/login/LinkSpan;
    .end local v16    # "start":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 339
    :cond_1
    if-nez v8, :cond_2

    .line 340
    const-string v18, "GLSActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No such policy while creating link, id=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v8    # "found":Z
    .end local v10    # "id":I
    .end local v17    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 343
    .restart local v8    # "found":Z
    .restart local v10    # "id":I
    .restart local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 344
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v18, "GLSActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to convert value \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' to a number"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 349
    .end local v3    # "annotation":Landroid/text/Annotation;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "found":Z
    .end local v10    # "id":I
    .end local v17    # "value":Ljava/lang/String;
    :cond_3
    return-object v5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/gsf/login/LinkSpan;->mParent:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v1, p0, Lcom/google/android/gsf/login/LinkSpan;->mPolicy:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->showAgreement(Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V

    .line 312
    return-void
.end method
