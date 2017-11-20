.class public final Lcom/google/glass/util/SettingsSecureProvider;
.super Lcom/google/glass/inject/Provider;
.source "SettingsSecureProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/util/SettingsSecure;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/SettingsSecureProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/util/SettingsSecureProvider;

    invoke-direct {v0}, Lcom/google/glass/util/SettingsSecureProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/SettingsSecureProvider;->INSTANCE:Lcom/google/glass/util/SettingsSecureProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/SettingsSecureProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/util/SettingsSecureProvider;->INSTANCE:Lcom/google/glass/util/SettingsSecureProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/ContentResolver;)Lcom/google/glass/util/SettingsSecure;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/util/SettingsSecureProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/SettingsSecureProvider$1;-><init>(Lcom/google/glass/util/SettingsSecureProvider;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SettingsSecureProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SettingsSecure;

    return-object v0
.end method
