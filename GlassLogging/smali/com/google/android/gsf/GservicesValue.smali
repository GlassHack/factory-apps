.class public abstract Lcom/google/android/gsf/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sContentResolver:Landroid/content/ContentResolver;


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/GservicesValue;->sContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/android/gsf/GservicesValue;, "Lcom/google/android/gsf/GservicesValue<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/GservicesValue;->mKey:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/android/gsf/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gsf/GservicesValue;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/GservicesValue;->sContentResolver:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gsf/GservicesValue;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/gsf/GservicesValue$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/GservicesValue$4;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gsf/GservicesValue;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/gsf/GservicesValue$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gsf/GservicesValue;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/gsf/GservicesValue$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/gsf/GservicesValue$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/GservicesValue$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lcom/google/android/gsf/GservicesValue;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/gsf/GservicesValue$1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/GservicesValue$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/android/gsf/GservicesValue;, "Lcom/google/android/gsf/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/google/android/gsf/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/GservicesValue;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
