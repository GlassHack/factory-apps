.class public final Lcom/google/android/gms/checkin/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/DropBoxManager;

.field c:Landroid/content/SharedPreferences;

.field d:Lcom/android/a/a;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:I

.field i:J

.field j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/google/android/gms/checkin/g;->b:Landroid/os/DropBoxManager;

    .line 94
    iput-object v0, p0, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    .line 97
    iput-object v0, p0, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    .line 100
    const-string v0, "https://android.clients.google.com/checkin"

    iput-object v0, p0, Lcom/google/android/gms/checkin/g;->e:Ljava/lang/String;

    .line 103
    const/high16 v0, 0x30000

    iput v0, p0, Lcom/google/android/gms/checkin/g;->f:I

    .line 106
    const/high16 v0, 0x80000

    iput v0, p0, Lcom/google/android/gms/checkin/g;->g:I

    .line 109
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/checkin/g;->h:I

    .line 112
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/google/android/gms/checkin/g;->i:J

    .line 115
    const-wide/32 v0, -0x75817280

    iput-wide v0, p0, Lcom/google/android/gms/checkin/g;->j:J

    return-void
.end method
