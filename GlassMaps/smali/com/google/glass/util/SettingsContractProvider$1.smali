.class Lcom/google/glass/util/SettingsContractProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SettingsContractProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SettingsContractProvider;)V
    .locals 0

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
