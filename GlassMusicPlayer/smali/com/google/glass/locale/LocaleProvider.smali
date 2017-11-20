.class public final Lcom/google/glass/locale/LocaleProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/locale/LocaleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/locale/LocaleProvider;

    invoke-direct {v0}, Lcom/google/glass/locale/LocaleProvider;-><init>()V

    sput-object v0, Lcom/google/glass/locale/LocaleProvider;->instance:Lcom/google/glass/locale/LocaleProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/locale/LocaleProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/locale/LocaleProvider;->instance:Lcom/google/glass/locale/LocaleProvider;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/locale/LocaleProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/locale/LocaleProvider$1;-><init>(Lcom/google/glass/locale/LocaleProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/locale/LocaleProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method
