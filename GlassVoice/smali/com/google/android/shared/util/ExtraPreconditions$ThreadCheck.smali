.class public Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
.super Ljava/lang/Object;
.source "ExtraPreconditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/ExtraPreconditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadCheck"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
