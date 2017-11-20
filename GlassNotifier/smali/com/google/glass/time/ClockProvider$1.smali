.class final Lcom/google/glass/time/ClockProvider$1;
.super Ljava/lang/Object;
.source "ClockProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/time/ClockProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/time/Clock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/time/Clock;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/time/ClockProvider$SingletonHolder;->access$100()Lcom/google/glass/time/ClockImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/glass/time/ClockProvider$1;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    return-object v0
.end method
