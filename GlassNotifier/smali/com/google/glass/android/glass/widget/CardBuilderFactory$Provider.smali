.class public final Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;
.super Lcom/google/glass/inject/Provider;
.source "CardBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/glass/widget/CardBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/glass/widget/CardBuilderFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;

    invoke-direct {v0}, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;->INSTANCE:Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;->INSTANCE:Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/android/glass/widget/CardBuilderFactory;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider$1;-><init>(Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/glass/widget/CardBuilderFactory;

    return-object v0
.end method
