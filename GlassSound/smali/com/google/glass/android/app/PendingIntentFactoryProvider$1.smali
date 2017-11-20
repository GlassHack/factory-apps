.class final Lcom/google/glass/android/app/PendingIntentFactoryProvider$1;
.super Ljava/lang/Object;
.source "PendingIntentFactoryProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/app/PendingIntentFactoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/android/app/PendingIntentFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/app/PendingIntentFactory;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/app/PendingIntentFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/android/app/PendingIntentFactoryImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/android/app/PendingIntentFactoryProvider$1;->get()Lcom/google/glass/android/app/PendingIntentFactory;

    move-result-object v0

    return-object v0
.end method
