.class abstract Lcom/google/android/location/o/f;
.super Lcom/google/android/location/o/c;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/location/o/c;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/location/o/f;->a:Landroid/app/AlarmManager;

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/location/o/f;->a:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 77
    return-void
.end method
