.class Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;
.super Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimplifiedChineseContactUtils"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Ljava/util/Locale;)V

    .line 343
    return-void
.end method

.method public static getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 356
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v4, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/providers/contacts/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 358
    .local v7, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 359
    .local v6, "tokenCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v3, "keyPinyin":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, "keyInitial":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v2, "keyOriginal":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 366
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/contacts/HanziToPinyin$Token;

    .line 367
    .local v5, "token":Lcom/android/providers/contacts/HanziToPinyin$Token;
    const/4 v8, 0x3

    iget v9, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_0

    .line 365
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    :cond_0
    const/4 v8, 0x2

    iget v9, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_2

    .line 371
    iget-object v8, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v8, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 384
    :cond_1
    :goto_2
    iget-object v8, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_2
    const/4 v8, 0x1

    iget v9, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_1

    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 376
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 378
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 379
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 381
    :cond_4
    iget-object v8, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v8, v5, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 389
    .end local v5    # "token":Lcom/android/providers/contacts/HanziToPinyin$Token;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 349
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;->getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
