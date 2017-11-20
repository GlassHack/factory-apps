.class public Lcom/google/android/gms/internal/gd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final Qj:Lcom/google/android/gms/internal/gg;

.field public final Qk:Lcom/google/android/gms/internal/gc;

.field public final Ql:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gg;

    iput-object v0, p0, Lcom/google/android/gms/internal/gd$a;->Qj:Lcom/google/android/gms/internal/gg;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gc;

    iput-object v0, p0, Lcom/google/android/gms/internal/gd$a;->Qk:Lcom/google/android/gms/internal/gc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gd$a;->Ql:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;Lcom/google/android/gms/internal/gd$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gd$a;-><init>(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gg;

    iput-object v0, p0, Lcom/google/android/gms/internal/gd$a;->Qj:Lcom/google/android/gms/internal/gg;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gd$a;->Qk:Lcom/google/android/gms/internal/gc;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iput-object v0, p0, Lcom/google/android/gms/internal/gd$a;->Ql:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;Lcom/google/android/gms/internal/gd$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gd$a;-><init>(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    return-void
.end method
