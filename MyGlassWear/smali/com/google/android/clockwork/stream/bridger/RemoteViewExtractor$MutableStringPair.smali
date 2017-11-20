.class Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;
.super Ljava/lang/Object;
.source "RemoteViewExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MutableStringPair"
.end annotation


# instance fields
.field text:Ljava/lang/StringBuilder;

.field title:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->title:Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->text:Ljava/lang/StringBuilder;

    .line 102
    return-void
.end method


# virtual methods
.method public toPair()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->title:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
