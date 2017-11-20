.class public final Lcom/google/common/base/Receivers;
.super Ljava/lang/Object;
.source "Receivers.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Receivers$CollectingReceiver;,
        Lcom/google/common/base/Receivers$CompositeReceiver;
    }
.end annotation


# static fields
.field private static final IGNORING_RECEIVER:Lcom/google/common/base/Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Receiver",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/common/base/Receivers$1;

    invoke-direct {v0}, Lcom/google/common/base/Receivers$1;-><init>()V

    sput-object v0, Lcom/google/common/base/Receivers;->IGNORING_RECEIVER:Lcom/google/common/base/Receiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Ljava/util/Collection;)Lcom/google/common/base/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;)",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    new-instance v0, Lcom/google/common/base/Receivers$CollectingReceiver;

    invoke-direct {v0, p0}, Lcom/google/common/base/Receivers$CollectingReceiver;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static compose(Ljava/lang/Iterable;)Lcom/google/common/base/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/base/Receiver",
            "<TT;>;>;)",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "receivers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/base/Receiver<TT;>;>;"
    new-instance v0, Lcom/google/common/base/Receivers$CompositeReceiver;

    invoke-direct {v0, p0}, Lcom/google/common/base/Receivers$CompositeReceiver;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs compose([Lcom/google/common/base/Receiver;)Lcom/google/common/base/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/Receiver",
            "<-TT;>;)",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "receivers":[Lcom/google/common/base/Receiver;, "[Lcom/google/common/base/Receiver<-TT;>;"
    new-instance v0, Lcom/google/common/base/Receivers$CompositeReceiver;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/Receivers$CompositeReceiver;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static ignore()Lcom/google/common/base/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/base/Receivers;->IGNORING_RECEIVER:Lcom/google/common/base/Receiver;

    return-object v0
.end method
