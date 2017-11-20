.class Lcom/google/glass/util/SettingsSecureProvider$1;
.super Ljava/lang/Object;
.source "SettingsSecureProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SettingsSecureProvider;->get(Landroid/content/ContentResolver;)Lcom/google/glass/util/SettingsSecure;
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
        "Lcom/google/glass/util/SettingsSecure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SettingsSecureProvider;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/SettingsSecureProvider;

    .prologue
    .line 21
    iput-object p2, p0, Lcom/google/glass/util/SettingsSecureProvider$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/SettingsSecure;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    iget-object v1, p0, Lcom/google/glass/util/SettingsSecureProvider$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/glass/util/SettingsSecureProvider$1;->get()Lcom/google/glass/util/SettingsSecure;

    move-result-object v0

    return-object v0
.end method
