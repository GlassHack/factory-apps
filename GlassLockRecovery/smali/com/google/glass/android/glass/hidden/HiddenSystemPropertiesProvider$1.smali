.class final Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider$1;
.super Ljava/lang/Object;
.source "HiddenSystemPropertiesProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;
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
        "Lcom/google/android/glass/hidden/HiddenSystemProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/glass/hidden/HiddenSystemProperties;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getInstance()Lcom/google/android/glass/hidden/HiddenSystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider$1;->get()Lcom/google/android/glass/hidden/HiddenSystemProperties;

    move-result-object v0

    return-object v0
.end method
