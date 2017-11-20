.class public Lcom/google/android/gms/internal/sp$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final aIe:Lcom/google/android/gms/internal/ss;

.field public final aIf:Lcom/google/android/gms/internal/so;

.field public final aIg:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ss;

    iput-object v0, p0, Lcom/google/android/gms/internal/sp$a;->aIe:Lcom/google/android/gms/internal/ss;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/so;

    iput-object v0, p0, Lcom/google/android/gms/internal/sp$a;->aIf:Lcom/google/android/gms/internal/so;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/sp$a;->aIg:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/sp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/sp$a;-><init>(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ss;

    iput-object v0, p0, Lcom/google/android/gms/internal/sp$a;->aIe:Lcom/google/android/gms/internal/ss;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/sp$a;->aIf:Lcom/google/android/gms/internal/so;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iput-object v0, p0, Lcom/google/android/gms/internal/sp$a;->aIg:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;Lcom/google/android/gms/internal/sp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/sp$a;-><init>(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    return-void
.end method
