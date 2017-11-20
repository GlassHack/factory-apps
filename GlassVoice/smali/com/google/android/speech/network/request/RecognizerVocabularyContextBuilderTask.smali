.class public Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "RecognizerVocabularyContextBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerVocabularyContextBuilderTask"


# instance fields
.field private final mSpeechContext:Lcom/google/android/speech/context/SpeechContext;


# direct methods
.method constructor <init>(Lcom/google/android/speech/context/SpeechContext;)V
    .locals 1
    .param p1, "speechContext"    # Lcom/google/android/speech/context/SpeechContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 35
    const-string v0, "RecognizerVocabularyContextBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    .line 37
    return-void
.end method

.method private addTopContactsFromSupplier(Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;Lcom/google/common/base/Supplier;)V
    .locals 8
    .param p1, "context"    # Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 54
    const-string v4, "RecognizerVocabularyContextBuilderTask"

    const-string v5, "addTopContactsFromSupplier"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 55
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 57
    iget-object v4, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v3, v4

    .line 58
    .local v3, "offset":I
    iget-object v4, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/speech/util/Contacts$TopContact;

    iput-object v4, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "name":Ljava/lang/String;
    const-string v4, "RecognizerVocabularyContextBuilderTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TopContact.Name = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 61
    iget-object v4, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    new-instance v5, Lcom/google/speech/util/Contacts$TopContact;

    invoke-direct {v5}, Lcom/google/speech/util/Contacts$TopContact;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/speech/util/Contacts$TopContact;->setName(Ljava/lang/String;)Lcom/google/speech/util/Contacts$TopContact;

    move-result-object v5

    aput-object v5, v4, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offset":I
    :cond_0
    return-void
.end method

.method private addTopContactsFromSupplierArray(Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;Lcom/google/common/base/Supplier;)V
    .locals 10
    .param p1, "context"    # Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 69
    const-string v6, "RecognizerVocabularyContextBuilderTask"

    const-string v7, "addTopContactsFromSupplier"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 70
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 71
    .local v1, "contacts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 72
    iget-object v6, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v5, v6

    .line 73
    .local v5, "offset":I
    iget-object v6, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v7, v1

    invoke-static {v6, v7}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/speech/util/Contacts$TopContact;

    iput-object v6, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    .line 74
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 75
    .local v4, "name":Ljava/lang/String;
    const-string v6, "RecognizerVocabularyContextBuilderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TopContact.Name = \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    iget-object v6, p1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    new-instance v7, Lcom/google/speech/util/Contacts$TopContact;

    invoke-direct {v7}, Lcom/google/speech/util/Contacts$TopContact;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/speech/util/Contacts$TopContact;->setName(Ljava/lang/String;)Lcom/google/speech/util/Contacts$TopContact;

    move-result-object v7

    aput-object v7, v6, v5

    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "offset":I
    :cond_0
    return-void
.end method

.method public static getBuilder(Lcom/google/android/speech/context/SpeechContext;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0, "speechContext"    # Lcom/google/android/speech/context/SpeechContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/context/SpeechContext;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;

    invoke-direct {v0, p0}, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;-><init>(Lcom/google/android/speech/context/SpeechContext;)V

    return-object v0
.end method


# virtual methods
.method protected build()Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;-><init>()V

    .line 45
    .local v0, "context":Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    iget-object v1, p0, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    invoke-interface {v1}, Lcom/google/android/speech/context/SpeechContext;->getGenericTokensSupplier()Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->addTopContactsFromSupplierArray(Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;Lcom/google/common/base/Supplier;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    invoke-interface {v1}, Lcom/google/android/speech/context/SpeechContext;->getDisambigContactNamesSupplier()Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->addTopContactsFromSupplier(Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;Lcom/google/common/base/Supplier;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    invoke-interface {v1}, Lcom/google/android/speech/context/SpeechContext;->getTopContactNamesSupplier()Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->addTopContactsFromSupplier(Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;Lcom/google/common/base/Supplier;)V

    .line 48
    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->build()Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    move-result-object v0

    return-object v0
.end method
