.class public abstract Lcom/google/android/shared/util/NamedUiRunnable;
.super Ljava/lang/Object;
.source "NamedUiRunnable.java"

# interfaces
.implements Lcom/google/android/shared/util/UiRunnable;


# instance fields
.field private mName:Ljava/lang/String;

.field private final mTaskName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/shared/util/NamedUiRunnable;->mTaskName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/shared/util/NamedUiRunnable;->mTaskName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/shared/util/NamedUiRunnable;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/shared/util/NamedUiRunnable;->mTaskName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/shared/util/Util;->getUiTaskName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/shared/util/NamedUiRunnable;->mName:Ljava/lang/String;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/shared/util/NamedUiRunnable;->mName:Ljava/lang/String;

    return-object v0
.end method
