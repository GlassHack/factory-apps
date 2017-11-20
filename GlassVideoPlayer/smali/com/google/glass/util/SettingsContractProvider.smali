.class public Lcom/google/glass/util/SettingsContractProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/util/SettingsContractProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/util/SettingsContractProvider;

    invoke-direct {v0}, Lcom/google/glass/util/SettingsContractProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/SettingsContractProvider;->instance:Lcom/google/glass/util/SettingsContractProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/SettingsContractProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/util/SettingsContractProvider;->instance:Lcom/google/glass/util/SettingsContractProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/util/SettingsContract;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/util/SettingsContractProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsContractProvider$1;-><init>(Lcom/google/glass/util/SettingsContractProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SettingsContractProvider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SettingsContract;

    return-object v0
.end method
