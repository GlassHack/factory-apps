.class public Lcom/google/android/youtube/core/async/Optional$Null;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/Optional;


# static fields
.field private static final INSTANCE:Lcom/google/android/youtube/core/async/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/youtube/core/async/Optional$Null;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/Optional$Null;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/Optional$Null;->INSTANCE:Lcom/google/android/youtube/core/async/Optional;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/google/android/youtube/core/async/Optional;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/youtube/core/async/Optional$Null;->INSTANCE:Lcom/google/android/youtube/core/async/Optional;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
