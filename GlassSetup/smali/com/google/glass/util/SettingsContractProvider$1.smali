.class Lcom/google/glass/util/SettingsContractProvider$1;
.super Ljava/lang/Object;
.source "SettingsContractProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SettingsContractProvider;->get()Lcom/google/glass/util/SettingsContract;
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
        "Lcom/google/glass/util/SettingsContract;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SettingsContractProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SettingsContractProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/SettingsContractProvider;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/util/SettingsContractProvider$1;->this$0:Lcom/google/glass/util/SettingsContractProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/SettingsContract;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/util/SettingsContract;

    invoke-direct {v0}, Lcom/google/glass/util/SettingsContract;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/util/SettingsContractProvider$1;->get()Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    return-object v0
.end method
