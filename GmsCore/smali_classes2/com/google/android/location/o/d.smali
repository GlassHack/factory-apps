.class public final Lcom/google/android/location/o/d;
.super Lcom/google/android/location/o/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/location/o/f;-><init>(Landroid/app/AlarmManager;)V

    return-void
.end method


# virtual methods
.method public final a(JLandroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/location/o/d;->a:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 30
    return-void
.end method
