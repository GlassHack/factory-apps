.class Lcom/google/glass/locale/LocaleProvider$1;
.super Ljava/lang/Object;
.source "LocaleProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;
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
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/locale/LocaleProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/locale/LocaleProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/locale/LocaleProvider;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/locale/LocaleProvider$1;->this$0:Lcom/google/glass/locale/LocaleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/locale/LocaleProvider$1;->get()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
