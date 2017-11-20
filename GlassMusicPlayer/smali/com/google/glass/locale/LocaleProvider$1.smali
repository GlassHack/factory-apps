.class Lcom/google/glass/locale/LocaleProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/locale/LocaleProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/locale/LocaleProvider;)V
    .locals 0

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
