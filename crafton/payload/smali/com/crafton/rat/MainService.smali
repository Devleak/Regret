.class public Lcom/crafton/rat/MainService;
.super Landroid/app/Service;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method

.method public onCreate()V
    .locals 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/crafton/rat/MainService$1;
    invoke-direct {v1, p0}, Lcom/crafton/rat/MainService$1;-><init>(Lcom/crafton/rat/MainService;)V
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    const/4 v0, 0x1
    return v0
.end method
