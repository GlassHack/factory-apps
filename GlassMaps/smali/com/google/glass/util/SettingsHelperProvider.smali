.class public final Lcom/google/glass/util/SettingsHelperProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/util/SettingsHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/util/SettingsHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/SettingsHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/SettingsHelperProvider;->instance:Lcom/google/glass/util/SettingsHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/SettingsHelperProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/util/SettingsHelperProvider;->instance:Lcom/google/glass/util/SettingsHelperProvider;

    return-object v0
.end method


# virtual methods
.method public final from(Landroid/content/Context;)Lcom/google/glass/util/SettingsHelper;
    .locals 1

    .prologue
    .line 27
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/google/glass/util/SettingsHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/SettingsHelperProvider$1;-><init>(Lcom/google/glass/util/SettingsHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SettingsHelperProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SettingsHelper;

    return-object v0
.end method
