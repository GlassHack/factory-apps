.class public final Lcom/google/glass/android/app/AlarmManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/android/app/AlarmManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/android/app/AlarmManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/app/AlarmManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/app/AlarmManagerProvider;->instance:Lcom/google/glass/android/app/AlarmManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/app/AlarmManagerProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/android/app/AlarmManagerProvider;->instance:Lcom/google/glass/android/app/AlarmManagerProvider;

    return-object v0
.end method


# virtual methods
.method public final from(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 28
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/glass/android/app/AlarmManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/app/AlarmManagerProvider$1;-><init>(Lcom/google/glass/android/app/AlarmManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/app/AlarmManagerProvider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method
